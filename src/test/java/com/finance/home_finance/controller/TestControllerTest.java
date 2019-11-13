package com.finance.home_finance.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.http.ResponseEntity;

import static org.junit.jupiter.api.Assertions.*;

class TestControllerTest {

    private TestController controller;

    @BeforeEach
    void init() {
        controller = new TestController();
    }

    @Test
    void test1() {
        String body = controller.test().getBody();
        assertEquals("OK", body);
    }
}