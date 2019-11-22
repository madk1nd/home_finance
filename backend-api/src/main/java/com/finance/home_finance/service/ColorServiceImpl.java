package com.finance.home_finance.service;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.repository.ColorsRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ColorServiceImpl implements ColorService {

    private final ColorsRepository repository;

    public ColorServiceImpl(ColorsRepository repository) {
        this.repository = repository;
    }

    @Override
    public List<ColorDTO> getAll() {
        return repository.findAll().stream()
                .map(color -> new ColorDTO(color.getId(), color.getCode()))
                .collect(Collectors.toList());
    }
}
