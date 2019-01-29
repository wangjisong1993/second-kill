package com.eric.collect.card;

import com.eric.collect.card.model.CollectCardRequest;
import com.eric.collect.card.service.CardLogsService;
import com.eric.collect.card.service.CollectCardService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/**
 * @author wang.js on 2019/1/29.
 * @version 1.0
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class CollectCardTest {

	@Resource
	private CollectCardService collectCardService;

	@Resource
	private CardLogsService cardLogsService;

	private ExecutorService executorService = Executors.newFixedThreadPool(100);

	@Test
	public void t3() {
		String userId = "5";
		cardLogsService.listCardLosByUserId(userId);
	}

	@Test
	public void t2() {
		String userId = "1";
		CollectCardRequest request = new CollectCardRequest().setRequestId(UUID.randomUUID().toString())
				.setUserId(userId);
		collectCardService.collect(request);
	}

	@Test
	public void t1() {
		for (int i = 0; i < 200; i++) {
			int finalI = i;
			Runnable runnable = () -> {
				String userId = String.valueOf(finalI);
				CollectCardRequest request = new CollectCardRequest().setRequestId(UUID.randomUUID().toString())
						.setUserId(userId);
				collectCardService.collect(request);
			};
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
			executorService.submit(runnable);
		}
		try {
			TimeUnit.SECONDS.sleep(10);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

}
