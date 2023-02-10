package com.example.demo.batch.mission;

import java.util.concurrent.ThreadPoolExecutor;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class missionChkPool {
	
	ThreadPoolTaskExecutor executor;
	
	/** 스레드 사용 해제시간 **/
	public final int keepAliveSeconds = 30;

	/** 서버 강제 종료 시 대기 중인 스래드를 처리할 최대 시간 **/
	public final int terminationSeconds = 60;

	/** 사용할 총 스레드 수 **/
	public final int corePoolSize = 20;

	/** 스레드가 가득 차고 queue가 가득 찾을때 늘어나는 스레드 수 **/
	public final int maxPoolSize = 30;

	/** 스레드가 가득 찾을떄 대기하는 수 **/
	public final int queueCapacity = 30;

	/** 스레드 명칭 **/
	public final String threadPrefix = "WrtmOrderCncl_";

	public void initialize() {
		executor = new ThreadPoolTaskExecutor();
		executor.setAllowCoreThreadTimeOut(true);
		executor.setKeepAliveSeconds(keepAliveSeconds);
		executor.setCorePoolSize(corePoolSize);
		executor.setMaxPoolSize(maxPoolSize);
		executor.setQueueCapacity(queueCapacity);
		executor.setThreadNamePrefix(threadPrefix);

		/** 최대 스레드로 최대 queue 값 만큼 증가 됫을때 처리 방법 정의 **/
		executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
		/** 서버 강제 종료 시 대기하고 있는 쓰레드를 처리할지 여부 **/
		executor.setWaitForTasksToCompleteOnShutdown(true);
		/** 서버 강제 종료 시 대기 중인 스래드를 처리할 최대 시간 **/
		executor.setAwaitTerminationSeconds(terminationSeconds);

		executor.initialize();
	}

	public ThreadPoolTaskExecutor getExecutor() {
		return this.executor;
	}
}
