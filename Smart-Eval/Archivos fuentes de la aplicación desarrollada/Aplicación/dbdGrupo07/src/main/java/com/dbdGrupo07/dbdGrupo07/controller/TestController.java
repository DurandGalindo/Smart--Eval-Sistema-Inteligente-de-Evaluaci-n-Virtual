package com.dbdGrupo07.dbdGrupo07.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/test")
public class TestController {
    
    @Autowired
    private DataSource dataSource;
    
    @GetMapping("/connection")
    public Map<String, Object> testConnection() {
        Map<String, Object> result = new HashMap<>();
        
        try (Connection connection = dataSource.getConnection()) {
            result.put("status", "SUCCESS");
            result.put("database", connection.getCatalog());
            result.put("url", connection.getMetaData().getURL());
            result.put("message", "Conexión a la base de datos exitosa");
        } catch (SQLException e) {
            result.put("status", "ERROR");
            result.put("message", "Error al conectar: " + e.getMessage());
        }
        
        return result;
    }
    
    @GetMapping("/health")
    public Map<String, String> health() {
        Map<String, String> status = new HashMap<>();
        status.put("status", "UP");
        status.put("message", "Aplicación funcionando correctamente");
        return status;
    }
}
