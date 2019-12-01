package com.finance.home_finance.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.UUID;

@Data
@AllArgsConstructor
public class CategoryDTO {
    private UUID id;
    private String name;
    private ColorDTO color;
}


