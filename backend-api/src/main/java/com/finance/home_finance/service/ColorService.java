package com.finance.home_finance.service;

import com.finance.home_finance.dto.ColorDTO;

import java.util.List;

public interface ColorService {
    List<ColorDTO> getAll();
    void save(ColorDTO dto);
}
