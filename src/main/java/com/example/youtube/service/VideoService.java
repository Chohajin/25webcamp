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

    /**
     * 모든 비디오를 반환합니다.
     * @return 비디오 리스트
     */
    public List<Video> getAllVideos() {
        try {
            // MockAPI 호출
            VideoResponse response = restTemplate.getForObject(apiUrl, VideoResponse.class);
            return response != null ? response.getVideos() : Collections.emptyList();
        } catch (Exception e) {
            // 오류 발생 시 빈 리스트 반환
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    /**
     * ID로 비디오를 조회합니다.
     *
     * @param id 조회할 비디오 ID
     * @return ID에 해당하는 비디오
     */
    public Video getVideoById(int id) {
        return restTemplate.getForObject(apiUrl + "/" + id, Video.class);
    }

    /**
     * 새로운 비디오를 추가합니다 (MockAPI에 POST 요청).
     *
     * @param video 추가할 비디오
     */
    public void addVideo(Video video) {
        restTemplate.postForObject(apiUrl, video, Video.class);
    }

    /**
     * 비디오 정보를 업데이트합니다 (MockAPI에 PUT 요청).
     *
     * @param video 업데이트할 비디오
     */
    public void updateVideo(Video video) {
        restTemplate.put(apiUrl + "/" + video.getId(), video);
    }

    /**
     * ID로 비디오를 삭제합니다 (MockAPI에 DELETE 요청).
     *
     * @param id 삭제할 비디오 ID
     */
    public void deleteVideo(int id) {
        restTemplate.delete(apiUrl + "/" + id);
    }

    private static class VideoResponse {
        private List<Video> videos;

        public List<Video> getVideos() {
            return videos;
        }

        public void setVideos(List<Video> videos) {
            this.videos = videos;
        }
    }
}