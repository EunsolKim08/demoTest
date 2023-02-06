package com.example.demo.schedule;

import java.util.Map;

import javax.batch.runtime.JobExecution;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.batch.core.JobParameter;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersInvalidException;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.example.demo.batch.member.checkMemberConfig;
import com.example.demo.bd.mapper.BdCpnManageMapper;
import com.example.demo.bd.mapper.BdPointManageMapper;
import com.example.demo.bd.model.couponVO;

import lombok.extern.slf4j.Slf4j;

@EnableScheduling
@Slf4j
@Component
public class scheduledServiceImpl implements scheduledService {
	
	@Autowired
	BdCpnManageMapper bdCpnManageMapper;
	
	@Autowired
	BdPointManageMapper bdPointManageMapper;
	
	@Autowired
	checkMemberConfig chkMemberConfig;
	
	@Autowired
	JobLauncher jobLauncher;
	
	/**월요일부터 금요일 매일 오후 12시 실행**/
	@Override
	@Scheduled(cron = "0 0 12 ? * MON-FRI", zone = "Europe/London")
	public void updateDailyShcedule() {
		log.info("**updateDailyShcedule**");
		bdPointManageMapper.resetDailyPoint();		
	}

	@Override
	@Scheduled(cron = "0 0/1 0-20 * * 1-5", zone = "Europe/London")
	public void selectMemberTasklet() {
		log.info("**selectMemberTasklet**");
		
		Map<String, JobParameter> confMap = new HashedMap();
		confMap.put("time", new JobParameter(System.currentTimeMillis()));
		JobParameters jobParameters = new JobParameters(confMap);
		
		try {
			jobLauncher.run(chkMemberConfig.checkMemberJob(), jobParameters);
		} catch (JobExecutionAlreadyRunningException | JobRestartException | JobInstanceAlreadyCompleteException
				| JobParametersInvalidException e) {
			e.printStackTrace();
		}
		
		
	}
	
}
