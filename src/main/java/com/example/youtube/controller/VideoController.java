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
        return "listVideo";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("video", new Video());
        return "addVideo"; // /WEB-INF/views/addVideo.jsp
    }

    @PostMapping("/add")
    public String addVideo(@ModelAttribute Video video) {
        videoService.addVideo(video);
        return "redirect:/videos";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        Video video = videoService.getVideoById(id);
        model.addAttribute("video", video);
        return "editVideo";
    }

    @PostMapping("/edit")
    public String editVideo(@ModelAttribute Video video) {
        videoService.updateVideo(video);
        return "redirect:/videos";
    }

    @GetMapping("/delete/{id}")
    public String deleteVideo(@PathVariable int id) {
        videoService.deleteVideo(id);
        return "redirect:/videos";
    }
}