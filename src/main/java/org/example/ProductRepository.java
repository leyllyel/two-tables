package org.example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Repository
public class ProductRepository {

    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    private static String read(String scriptFileName) {
        try (InputStream is = new ClassPathResource(scriptFileName).getInputStream();
             BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(is))) {
            return bufferedReader.lines().collect(Collectors.joining("\n"));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public String getProductName(String name) {
        String scriptContent = read("Script3.sql");

        Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("name", name);

        List<String> productNames = jdbcTemplate.queryForList(scriptContent, paramMap, String.class);
        return productNames.isEmpty() ? "Product not found" : productNames.get(0);
    }
}
