package com.klef.flemflare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.flemflare.model.SpotEvent;
import com.klef.flemflare.repository.SpotEventRepository;

@Service
public class SpotEventServiceImpl implements SpotEventService {

    @Autowired
    private SpotEventRepository spotEventRepository;

    @Override
    public void addSpotEvent(SpotEvent event) {
        spotEventRepository.save(event);
    }

    @Override
    public List<SpotEvent> getAllSpotEvents() {
        return spotEventRepository.findAll();
    }
}
