package com.finance.home_finance.service;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.model.Color;
import com.finance.home_finance.repository.ColorsRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ColorServiceImpl implements ColorService {

    private final ColorsRepository repository;

    @Override
    public List<ColorDTO> getAll() {
        return repository.findAll().stream()
                .map(color -> new ColorDTO(color.getId(), color.getCode()))
                .collect(Collectors.toList());
    }

    @Override
    public void save(ColorDTO dto) {
        Color color = new Color();
        color.setCode(dto.getCode());
        repository.save(color);
    }
}
