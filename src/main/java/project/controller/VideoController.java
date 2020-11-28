package project.controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.entity.Videos;
import project.repository.ResourceNotFoundException;
import project.service.VideoService;

import java.util.List;


@RestController
@RequestMapping("/")
public class VideoController {

    private final VideoService videoService;

    public VideoController(VideoService videoService) {
        this.videoService = videoService;
    }

    @GetMapping("/list")
    public String listVideos(Model theModel) {
        List<Videos> videos = videoService.getVideos();
        theModel.addAttribute("videos", videos);
        return "index";
    }

    @PostMapping("/addVideo")
    public String addVideo(@RequestBody Videos video) {
        videoService.saveVideo(video);
        return "redirect:/list";
    }


    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id) throws ResourceNotFoundException {
        videoService.deleteVideo(id);
        return "redirect:/customer/list";
    }
}