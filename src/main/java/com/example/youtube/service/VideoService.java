package com.example.youtube.service;

import com.example.youtube.model.Video;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class VideoService {
    private final List<Video> videos = new ArrayList<>();
    private int nextId = 1;

    /**
     * 모든 비디오를 반환합니다.
     *
     * @return 비디오 리스트
     */
    public List<Video> getAllVideos() {
        return Collections.unmodifiableList(videos); // 리스트를 읽기 전용으로 반환
    }

    /**
     * ID로 비디오를 조회합니다.
     *
     * @param id 조회할 비디오 ID
     * @return ID에 해당하는 비디오(Optional)
     */
    public Optional<Video> getVideoById(int id) {
        return videos.stream()
                .filter(video -> video.getId() == id)
                .findFirst();
    }

    /**
     * 새로운 비디오를 추가합니다.
     *
     * @param video 추가할 비디오
     */
    public void addVideo(Video video) {
        if (video == null) {
            throw new IllegalArgumentException("Video cannot be null");
        }
        video.setId(nextId++);
        videos.add(video);
    }

    /**
     * 비디오 정보를 업데이트합니다.
     *
     * @param updatedVideo 업데이트할 비디오 정보
     */
    public void updateVideo(Video updatedVideo) {
        if (updatedVideo == null || updatedVideo.getId() <= 0) {
            throw new IllegalArgumentException("Invalid video data");
        }

        boolean updated = false;
        for (int i = 0; i < videos.size(); i++) {
            if (videos.get(i).getId() == updatedVideo.getId()) {
                videos.set(i, updatedVideo);
                updated = true;
                break;
            }
        }

        if (!updated) {
            throw new IllegalArgumentException("Video with ID " + updatedVideo.getId() + " not found");
        }
    }

    /**
     * ID로 비디오를 삭제합니다.
     *
     * @param id 삭제할 비디오 ID
     */
    public void deleteVideo(int id) {
        boolean removed = videos.removeIf(video -> video.getId() == id);
        if (!removed) {
            throw new IllegalArgumentException("Video with ID " + id + " not found");
        }
    }
}