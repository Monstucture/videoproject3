package project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import project.entity.Videos;
import project.repository.ResourceNotFoundException;
import project.repository.VideoRepository;

import java.util.List;


@Service
public class VideoServiceImpl implements VideoService {

    private final VideoRepository videoRepository;

    public VideoServiceImpl(@Qualifier("videoRepository") VideoRepository videoRepository) {
        this.videoRepository = videoRepository;
    }

    @Override
    @Transactional
    public List<Videos> getVideos() {
        return videoRepository.findAll();
    }

    @Override
    @Transactional
    public void saveVideo(Videos video) {
        videoRepository.save(video);
    }

    @Override
    @Transactional
    public Videos getVideo(int id) throws ResourceNotFoundException {
        return videoRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteVideo(int id) {
        videoRepository.deleteById(id);
    }
}