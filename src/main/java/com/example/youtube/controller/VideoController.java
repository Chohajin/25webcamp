package com.example.youtube.controller;

import com.example.youtube.model.Video;
import com.example.youtube.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/videos")
public class VideoController {
    @Autowired
    private VideoService videoService;

    @GetMapping
    public String listVideos(Model model) {
        model.addAttribute("videos", videoService.getAllVideos());
        return "listVideo"; // listVideo.jsp로 이동
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("video", new Video());
        return "addVideo"; // addVideo.jsp로 이동
    }

    @PostMapping("/add")
    public String addVideo(@ModelAttribute Video video) {
        // MockAPI에서 URL 가져오기
        String generatedUrl = videoService.generateMockUrl();
        video.setUrl(generatedUrl);

        videoService.addVideo(video);
        return "redirect:/videos"; // 리스트 페이지로 리다이렉트
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