package com.finance.home_finance.dto;

import com.finance.home_finance.model.Category;
import com.finance.home_finance.model.Label;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.Set;
import java.util.UUID;

@Data
@AllArgsConstructor
public class EventDTO {
    private UUID id;
    private String name;
    private BigInteger value;
    private LocalDateTime date;
    private Category category;
    private Set<Label> labels;
}
