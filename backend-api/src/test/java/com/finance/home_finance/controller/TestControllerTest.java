package com.finance.home_finance.controller;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class TestControllerTest {

    private TestController controller;

    @BeforeEach
    void init() {
        controller = new TestController();
    }

    @Test
    void test1() {
        String body = controller.test().getBody();
        assertEquals("Hello", body);
    }
}