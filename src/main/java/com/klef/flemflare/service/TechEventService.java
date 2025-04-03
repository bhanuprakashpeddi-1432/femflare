package com.klef.flemflare.service;

import java.util.List;
import com.klef.flemflare.model.TechEvent;

public interface TechEventService {
    void addTechEvent(TechEvent event);
    List<TechEvent> getAllTechEvents();
}
