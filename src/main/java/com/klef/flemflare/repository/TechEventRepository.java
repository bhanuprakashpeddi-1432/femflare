package com.klef.flemflare.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.flemflare.model.TechEvent;

public interface TechEventRepository extends JpaRepository<TechEvent, Integer> {
}
