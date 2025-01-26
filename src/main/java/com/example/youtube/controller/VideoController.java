package com.example.youtube.controller;

import com.example.youtube.model.Video;
import com.example.youtube.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/videos")
public class VideoController {
    @Autowired
    private VideoService videoService;

    @GetMapping
    public String listVideos(Model model) {
        List<Video> videos = videoService.getAllVideos();
        model.addAttribute("videos", videos);
        return "listVideo"; // listVideo.jsp로 이동
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("video", new Video());
        return "addVideo"; // addVideo.jsp로 이동
    }

    @PostMapping("/add")
    public String addVideo(@ModelAttribute Video video) {
        try {
            // 사용자가 URL을 입력하지 않은 경우 MockAPI에서 URL 가져오기
            if (video.getUrl() == null || video.getUrl().isEmpty()) {
                String generatedUrl = videoService.generateMockUrl();
                video.setUrl(generatedUrl);
            }

            // 비디오 추가
            videoService.addVideo(video);
            return "redirect:/videos";
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding video: " + e.getMessage());
        }
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        Video video = videoService.getVideoById(id);
        model.addAttribute("video", video);
        return "editVideo"; // editVideo.jsp로 이동
    }

    @PostMapping("/edit")
    public String editVideo(@ModelAttribute Video video) {
        videoService.updateVideo(video);
        return "redirect:/videos"; // 수정 후 리스트 페이지로 리다이렉트
    }

    @GetMapping("/delete/{id}")
    public String deleteVideo(@PathVariable int id) {
        videoService.deleteVideo(id);
        return "redirect:/videos"; // 삭제 후 리스트 페이지로 리다이렉트
    }
}