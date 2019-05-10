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

    private String key;

    private String type;

    private List<Imagelocal> imagelocals;

    private String relateUrl;

    public String getRelateUrl() {
        return relateUrl;
    }

    public void setRelateUrl(String relateUrl) {
        this.relateUrl = relateUrl;
    }

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

    public List<Imagelocal> getImagelocals() {
        return imagelocals;
    }

    public void setImagelocals(List<Imagelocal> imagelocals) {
        this.imagelocals = imagelocals;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}