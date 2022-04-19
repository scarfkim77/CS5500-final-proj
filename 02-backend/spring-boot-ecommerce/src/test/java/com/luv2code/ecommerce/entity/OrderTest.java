package com.luv2code.ecommerce.entity;

import org.junit.Before;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Set;

import static org.junit.Assert.*;

public class OrderTest {
    Order order;
    OrderItem item;
    @Before
    public void setUp() throws Exception {
        item = new OrderItem();
        item.setId(1001L);
        item.setImageUrl("src\\images\\test.jpg");
        item.setUnitPrice(BigDecimal.valueOf(12.99));
        item.setQuantity(1);
        item.setProductId(1L);
        order = new Order();
    }

    @Test
    public void addTest() {
        order.add(item);
        Set<OrderItem> orderItems = order.getOrderItems();
        assertTrue(orderItems.contains(item));
        assertEquals(1, orderItems.size());
        for (OrderItem it: orderItems) {
            assertEquals(item,it);
            assertEquals(order,it.getOrder());
        }
    }
}