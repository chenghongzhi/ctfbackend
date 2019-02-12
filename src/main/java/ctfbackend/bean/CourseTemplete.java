package ctfbackend.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

public class CourseTemplete {
    private Long id;

    private String cname;
    private Date createtime;

    private String cdescribe;

    private String img;

    private String createdby;

    private List<Imagelocal> imagelocals;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getCdescribe() {
        return cdescribe;
    }

    public void setCdescribe(String cdescribe) {
        this.cdescribe = cdescribe;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public List<Imagelocal> getImagelocals() {
        return imagelocals;
    }

    public void setImagelocals(List<Imagelocal> imagelocals) {
        this.imagelocals = imagelocals;
    }
}