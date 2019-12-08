package com.finance.home_finance.service;

import com.finance.home_finance.dto.EventDTO;
import com.finance.home_finance.model.Event;
import com.finance.home_finance.repository.EventRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class EventServiceImpl implements EventService {

    private final EventRepository repository;

    @Override
    public List<EventDTO> getAll() {
        List<Event> all = repository.findAll();
        return all.stream().map(event -> new EventDTO(
                event.getId(),
                event.getName(),
                event.getValue(),
                event.getDate(),
                event.getCategory(),
                event.getLabels()
        )).collect(Collectors.toList());
    }
}
