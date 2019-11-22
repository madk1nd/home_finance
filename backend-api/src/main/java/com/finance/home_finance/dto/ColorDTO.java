package com.finance.home_finance.dto;

import java.util.UUID;

public class ColorDTO {
    private UUID id;
    private String code;

    public ColorDTO(UUID id, String code) {
        this.id = id;
        this.code = code;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
