package com.finance.home_finance.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.UUID;

@Data
@AllArgsConstructor
public class ColorDTO {
    private UUID id;
    private String code;
}
