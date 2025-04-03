package com.klef.flemflare.service;

import com.klef.flemflare.model.LiteraryEvent;
import java.util.List;

public interface LiteraryEventService {
    void addLiteraryEvent(LiteraryEvent event);
    List<LiteraryEvent> getAllLiteraryEvents();
}
