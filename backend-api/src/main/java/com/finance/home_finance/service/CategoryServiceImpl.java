package com.finance.home_finance.service;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.dto.CategoryDTO;
import com.finance.home_finance.model.Category;
import com.finance.home_finance.repository.CategoriesRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoriesRepository repository;

    @Override
    public List<CategoryDTO> getAll() {
        List<Category> all = repository.findAll();
        return all.stream().map(category -> new CategoryDTO(
                category.getId(),
                category.getName(),
                new ColorDTO(
                        category.getColor().getId(),
                        category.getColor().getCode()
                )
        )).collect(Collectors.toList());
    }
}
