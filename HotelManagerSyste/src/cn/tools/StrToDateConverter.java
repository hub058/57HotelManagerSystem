package cn.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class StrToDateConverter implements Converter<String, Date> {

	private String datePattern;
	
	public StrToDateConverter (String datePattern) {
		System.out.println("StrToDateConverter convert :"+datePattern);
		this.datePattern=datePattern;
	}
	
	@Override
	public Date convert(String s) {
		Date date=null;
		try {
			date=new SimpleDateFormat(datePattern).parse(s);
			System.out.println("StrToDateConverter conveert date :"+date);
		} catch (Exception e) {
		e.printStackTrace();
		}
		return date;
	}

}
