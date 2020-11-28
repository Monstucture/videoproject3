package project.entity;


import javax.persistence.*;


@Entity
@Table(name = "videos")
public class Videos {
    /**
     *
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "url")
    private String url;
    @Column(name = "img")
    private String img;
    @Column(name = "h3content")
    private String h3content;
    @Column(name = "pcontent")
    private String pcontent;

    public Videos() {
    }

    public Videos(int id, String url, String img, String h3content, String pcontent) {
        setId(id);
        setUrl(url);
        setH3content(h3content);
        setPcontent(pcontent);
    }

    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getH3content() {
        return h3content;
    }

    public void setH3content(String h3content) {
        this.h3content = h3content;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

}
