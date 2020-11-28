package project.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.entity.Videos;


@Repository("videoRepository")
public interface VideoRepository extends JpaRepository<Videos, Integer> {

}