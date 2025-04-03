package com.klef.flemflare.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.flemflare.model.TechEvent;
import com.klef.flemflare.repository.TechEventRepository;
import com.klef.flemflare.service.TechEventService;

@Service
public class TechEventServiceImpl implements TechEventService {

    @Autowired
    private TechEventRepository techEventRepository;

    @Override
    public void addTechEvent(TechEvent event) {
        techEventRepository.save(event);
    }

    @Override
    public List<TechEvent> getAllTechEvents() {
        return techEventRepository.findAll();
    }
}
