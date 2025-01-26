package com.example.youtube.service;

import com.example.youtube.model.Video;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@Service
public class VideoService {
    private final String apiUrl = "https://679370e65eae7e5c4d8ea954.mockapi.io/db";
    private final RestTemplate restTemplate = new RestTemplate();

    public List<Video> getAllVideos() {
        Video[] response = restTemplate.getForObject(apiUrl, Video[].class);
        return response != null ? Arrays.asList(response) : Collections.emptyList();
    }

    public Video getVideoById(int id) {
        return restTemplate.getForObject(apiUrl + "/" + id, Video.class);
    }

    public void addVideo(Video video) {
        restTemplate.postForObject(apiUrl, video, Video.class);
    }

    public void updateVideo(Video video) {
        restTemplate.put(apiUrl + "/" + video.getId(), video);
    }

    public void deleteVideo(int id) {
        restTemplate.delete(apiUrl + "/" + id);
    }

    public String generateMockUrl() {
        try {
            Video[] response = restTemplate.getForObject(apiUrl, Video[].class);
            if (response != null && response.length > 0) {
                // MockAPI에서 첫 번째 항목의 URL을 반환
                return response[0].getUrl();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        // 기본 URL 반환 (MockAPI 실패 시)
        return "https://example.com/default-video-url";
    }
}