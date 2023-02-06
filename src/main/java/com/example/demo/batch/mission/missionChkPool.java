package com.example.demo.batch.mission;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@ComponentScan
public class missionChkPool {
	
	/** async 처리를 위한 ThreadPoolTaskExecutor*/
	ThreadPoolTaskExecutor executor;
}
