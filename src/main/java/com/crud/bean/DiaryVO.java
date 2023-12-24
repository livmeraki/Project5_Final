package com.crud.bean;

import java.util.Date;

public class DiaryVO {
    private int seq;
    private String title;
    private String content;
    private String todayWeather;
    private String todayGood;
    private String todayBad;
    private String tomorrowPlan;
    private String img;
    private Date regdate;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTodayWeather() {
        return todayWeather;
    }

    public void setTodayWeather(String todayWeather) {
        this.todayWeather = todayWeather;
    }

    public String getTodayGood() {
        return todayGood;
    }

    public void setTodayGood(String todayGood) {
        this.todayGood = todayGood;
    }

    public String getTodayBad() {
        return todayBad;
    }

    public void setTodayBad(String todayBad) {
        this.todayBad = todayBad;
    }

    public String getTomorrowPlan() {
        return tomorrowPlan;
    }

    public void setTomorrowPlan(String tomorrowPlan) {
        this.tomorrowPlan = tomorrowPlan;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}
