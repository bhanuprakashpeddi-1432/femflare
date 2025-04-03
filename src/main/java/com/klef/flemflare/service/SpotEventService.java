package com.klef.flemflare.service;

import java.util.List;

import com.klef.flemflare.model.SpotEvent;

public interface SpotEventService 
{
	void addSpotEvent(SpotEvent event);
    List<SpotEvent> getAllSpotEvents();

}
