package com.finance.home_finance.controller;

import com.finance.home_finance.dto.LabelDTO;
import com.finance.home_finance.service.LabelService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class LabelController {
    private final LabelService service;

    @GetMapping(path = "/labels", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<List<LabelDTO>> getAll() {
        List<LabelDTO> all = service.getAll();
        return new ResponseEntity<>(all, HttpStatus.ACCEPTED);
    }
}
