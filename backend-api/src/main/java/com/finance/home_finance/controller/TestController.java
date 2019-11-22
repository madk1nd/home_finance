package com.finance.home_finance.controller;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.service.ColorService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TestController {

    private final ColorService service;

    public TestController(ColorService service) {
        this.service = service;
    }

    @GetMapping("/test")
    public ResponseEntity<String> test() {
        return new ResponseEntity<>("Ok", HttpStatus.ACCEPTED);
    }

    @GetMapping("/colors")
    public ResponseEntity<List<ColorDTO>> colors() {
        List<ColorDTO> all = service.getAll();
        return new ResponseEntity<>(all, HttpStatus.ACCEPTED);
    }
}
