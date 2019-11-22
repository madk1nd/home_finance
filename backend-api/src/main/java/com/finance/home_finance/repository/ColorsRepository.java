package com.finance.home_finance.repository;

import com.finance.home_finance.model.Color;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface ColorsRepository extends JpaRepository<Color, UUID> {
}
