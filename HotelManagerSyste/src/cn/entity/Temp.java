package cn.entity;
import java.util.Date;
public class Temp {
private Integer id;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Date getDay() {
	return day;
}
public void setDay(Date day) {
	this.day = day;
}
public Integer getTempa() {
	return tempa;
}
public void setTempa(Integer tempa) {
	this.tempa = tempa;
}
public String getTianqi() {
	return tianqi;
}
public void setTianqi(String tianqi) {
	this.tianqi = tianqi;
}
private Date day;
private Integer tempa;
private String tianqi;

}
