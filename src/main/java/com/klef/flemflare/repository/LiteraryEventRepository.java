package com.klef.flemflare.repository;

import com.klef.flemflare.model.LiteraryEvent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LiteraryEventRepository extends JpaRepository<LiteraryEvent, Integer> {
}
