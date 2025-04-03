package com.klef.flemflare.service;

import com.klef.flemflare.model.LiteraryEvent;
import com.klef.flemflare.repository.LiteraryEventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LiteraryEventServiceImpl implements LiteraryEventService {
    
    @Autowired
    private LiteraryEventRepository literaryEventRepository;

    @Override
    public void addLiteraryEvent(LiteraryEvent event) {
        literaryEventRepository.save(event);
    }

    @Override
    public List<LiteraryEvent> getAllLiteraryEvents() {
        return literaryEventRepository.findAll();
    }
}
