package project.service;




import project.entity.Videos;
import project.repository.ResourceNotFoundException;

import java.util.List;

public interface VideoService {

    List<Videos> getVideos();

    void saveVideo(Videos video);

    Videos getVideo(int id) throws ResourceNotFoundException;

    void deleteVideo(int id) throws ResourceNotFoundException;

}