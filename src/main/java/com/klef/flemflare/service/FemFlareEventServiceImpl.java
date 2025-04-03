package com.klef.flemflare.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.flemflare.model.FemFlareEvent;
import com.klef.flemflare.repository.FemFlareEventRepository;

@Service
public class FemFlareEventServiceImpl implements FemFlareEventService {

    @Autowired
    private FemFlareEventRepository femFlareEventRepository;

    @Override
    public void addFemFlareEvent(FemFlareEvent event) {
        femFlareEventRepository.save(event);
    }

    @Override
    public List<FemFlareEvent> getAllFemFlareEvents() {
        return femFlareEventRepository.findAll();
    }
}
