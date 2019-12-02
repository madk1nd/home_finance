package com.finance.home_finance.service;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.dto.LabelDTO;
import com.finance.home_finance.model.Label;
import com.finance.home_finance.repository.LabelsRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class LabelServiceImpl implements LabelService {

    private final LabelsRepository repository;

    @Override
    public List<LabelDTO> getAll() {
        List<Label> all = repository.findAll();
        return all.stream().map(label -> new LabelDTO(
                label.getId(),
                label.getName(),
                new ColorDTO(
                        label.getColor().getId(),
                        label.getColor().getCode()
                )
        )).collect(Collectors.toList());
    }
}
