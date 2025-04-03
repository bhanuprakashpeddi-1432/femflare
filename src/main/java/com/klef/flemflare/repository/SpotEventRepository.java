package com.klef.flemflare.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.flemflare.model.SpotEvent;

public interface SpotEventRepository extends JpaRepository<SpotEvent, Integer>
{
	
}
