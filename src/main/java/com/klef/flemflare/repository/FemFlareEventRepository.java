package com.klef.flemflare.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.flemflare.model.FemFlareEvent;

public interface FemFlareEventRepository extends JpaRepository<FemFlareEvent, Integer> {
	
}
