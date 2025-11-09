package com.klef.flemflare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.sql.DataSource;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;

/**
 * Health Check Controller for monitoring application status
 * Useful for Render and other deployment platforms
 */
@RestController
public class HealthCheckController {

    @Autowired
    private DataSource dataSource;

    /**
     * Basic health check endpoint
     * @return HTTP 200 if application is running
     */
    @GetMapping("/health")
    public ResponseEntity<Map<String, Object>> health() {
        Map<String, Object> health = new HashMap<>();
        health.put("status", "UP");
        health.put("application", "Femflare");
        health.put("timestamp", System.currentTimeMillis());
        
        return ResponseEntity.ok(health);
    }

    /**
     * Database connectivity check
     * @return HTTP 200 if database is accessible, 503 otherwise
     */
    @GetMapping("/health/db")
    public ResponseEntity<Map<String, Object>> healthDb() {
        Map<String, Object> health = new HashMap<>();
        
        try (Connection connection = dataSource.getConnection()) {
            if (connection.isValid(1)) {
                health.put("status", "UP");
                health.put("database", "connected");
                return ResponseEntity.ok(health);
            } else {
                health.put("status", "DOWN");
                health.put("database", "not responding");
                return ResponseEntity.status(HttpStatus.SERVICE_UNAVAILABLE).body(health);
            }
        } catch (Exception e) {
            health.put("status", "DOWN");
            health.put("database", "error");
            health.put("error", e.getMessage());
            return ResponseEntity.status(HttpStatus.SERVICE_UNAVAILABLE).body(health);
        }
    }
}
