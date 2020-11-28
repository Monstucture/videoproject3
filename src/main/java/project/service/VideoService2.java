
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Service;
//
//import java.com.project.videoproject.entity.Videos;
//import java.com.project.videoproject.repository.VideoRepository;
//import java.util.List;
//
//
//@Service
//public class VideoService2 {
//
//    @Qualifier("videoRepository")
//    @Autowired
//    private VideoRepository videoRepository;
//
//
//    public List<Videos> getVideos() {
//        return videoRepository.findAll();
//    }
//
//    public Videos saveVideo(Videos video) {
//    	return videoRepository.save(video);
//    }
//
//    public Videos getVideo(int id) {
//    	 return videoRepository.findById(id).orElse(null);
//    }
//
//    public void deleteVideo(int id) {
//    	videoRepository.deleteById(id);
//    }
//}