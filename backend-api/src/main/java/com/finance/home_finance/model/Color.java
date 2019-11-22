package com.finance.home_finance.model;

import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;

@Entity
@Table(name = "colors")
public class Color {

    @Id
    @Column(name = "id")
    @Type(type = "pg-uuid")
    private UUID id;
    @Column(name = "code")
    private String code;

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

    @Override
    public String toString() {
        return "Color{" +
                "id=" + id +
                ", code='" + code + '\'' +
                '}';
    }
}
