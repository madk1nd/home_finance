package com.finance.home_finance.controller;

import com.finance.home_finance.dto.CategoryDTO;
import com.finance.home_finance.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class CategoryController {

    private final CategoryService service;

    @GetMapping("/categories")
    public ResponseEntity<List<CategoryDTO>> categories() {
        List<CategoryDTO> all = service.getAll();
        return new ResponseEntity<>(all, HttpStatus.ACCEPTED);
    }
}

