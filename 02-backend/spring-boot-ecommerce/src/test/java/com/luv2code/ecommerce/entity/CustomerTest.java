package com.luv2code.ecommerce.entity;

import org.junit.Before;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;

import static org.junit.Assert.*;

public class CustomerTest {
    Order order;
    Customer customer;
    @Before
    public void setUp() throws Exception {
        order = new Order();
        order.setId(1L);
        order.setOrderTrackingNumber("DHL123123");
        order.setTotalQuantity(3);
        order.setTotalPrice(BigDecimal.valueOf(200.99));
        order.setStatus("submitted");
        order.setDateCreated(new Date());
        order.setLastUpdated(new Date());
        order.setShippingAddress(new Address());
        order.setBillingAddress(new Address());
        customer = new Customer();
    }

    @Test
    public void addTest() {
        customer.add(order);
        Set<Order> orders = customer.getOrders();
        assertTrue(orders.contains(order));
        assertEquals(1,orders.size());
        for (Order ord: orders) {
            assertEquals(order, ord);
            assertEquals(customer, ord.getCustomer());
        }
    }
}