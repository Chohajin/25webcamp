package com.example.youtube.service;

import com.example.youtube.model.Video;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VideoService {
    private List<Video> videos = new ArrayList<>();
    private int nextId = 1;

    public List<Video> getAllVideos() {
        return videos;
    }

    public Video getVideoById(int id) {
        return videos.stream().filter(video -> video.getId() == id).findFirst().orElse(null);
    }

    public void addVideo(Video video) {
        video.setId(nextId++);
        videos.add(video);
    }

    public void updateVideo(Video updatedVideo) {
        videos = videos.stream()
                .map(video -> video.getId() == updatedVideo.getId() ? updatedVideo : video)
                .collect(Collectors.toList());
    }

    public void deleteVideo(int id) {
        videos.removeIf(video -> video.getId() == id);
    }
}