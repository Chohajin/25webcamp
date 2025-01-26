package com.example.youtube.model;

public class Video {
    private int id;
    private String title;
    private String url;
    private String description;
    private String user;
    private String date;

    public Video() {}

    public Video(int id, String title, String url, String description, String user, String date) {
        this.id = id;
        this.title = title;
        this.url = url;
        this.description = description;
        this.user = user;
        this.date = date;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}