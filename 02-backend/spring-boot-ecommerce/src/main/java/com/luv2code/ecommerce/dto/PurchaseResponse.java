package com.luv2code.ecommerce.dto;

import lombok.Data;

// Use this class to send back a java object as JSON
@Data
public class PurchaseResponse {

    private final String orderTrackingNumber;

}
