package com.example.r42;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Date;
import java.util.TimeZone;
import java.text.SimpleDateFormat;

@RestController
public class SuchController {
	@RequestMapping("/")
	public String suchHello(){
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
		dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
		return  dateFormat.format(date);
	}
}

