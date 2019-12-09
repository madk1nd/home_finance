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

    private String code1;
    private String code2;

    @BeforeEach
    void init() {
        code1 = "#000000";
        code2 = "#FFFFFF";

        service.save(new ColorDTO(UUID.randomUUID(), code1));
        service.save(new ColorDTO(UUID.randomUUID(), code2));
    }

    @Test
    void test() throws Exception {
        mvc.perform(get("/colors"))
//                .andDo(print())
                .andExpect(status().isAccepted())
                .andExpect(jsonPath("$.length()").value(2))
                .andExpect(jsonPath("$[0].code").value(code1))
                .andExpect(jsonPath("$[1].code").value(code2));
    }
}