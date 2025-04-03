package com.klef.flemflare.service;

import java.util.List;

import com.klef.flemflare.model.FemFlareEvent;

public interface FemFlareEventService {
    void addFemFlareEvent(FemFlareEvent event);
    List<FemFlareEvent> getAllFemFlareEvents();
}
