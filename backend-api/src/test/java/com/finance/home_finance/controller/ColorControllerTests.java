package com.finance.home_finance.controller;

import com.finance.home_finance.dto.ColorDTO;
import com.finance.home_finance.service.ColorService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import java.util.UUID;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class ColorControllerTests {

    @Autowired
    private ColorService service;

    @Autowired
    private MockMvc mvc;

    @BeforeEach
    void init() {
        service.save(new ColorDTO(UUID.randomUUID(), "#000000"));
        service.save(new ColorDTO(UUID.randomUUID(), "#FFFFFF"));
    }

    @Test
    void test() throws Exception {
        mvc.perform(get("/colors"))
//                .andDo(print())
                .andExpect(status().isAccepted())
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$[0].code").value("#000000"))
                .andExpect(jsonPath("$[1].code").value("#FFFFFF"));
    }
}