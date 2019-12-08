package com.finance.home_finance.controller;

import com.finance.home_finance.dto.EventDTO;
import com.finance.home_finance.service.EventService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
public class EventController {

    private final EventService service;

    @GetMapping(path = "/events")
    public ResponseEntity<List<EventDTO>> getAll() {
        List<EventDTO> all = service.getAll();
        return new ResponseEntity<>(all, HttpStatus.ACCEPTED);
    }
}
