package com.finance.home_finance.repository;

import com.finance.home_finance.model.Label;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface LabelsRepository extends JpaRepository<Label, UUID> {
}
