package ctfbackend.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.ToString;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.util.Date;


@ToString
public class Student {
    private Long id;
    @NotNull(message = "学号不能为空")
    private Long number;
    @NotEmpty(message = "学院不能为空")
    private String college;
    @NotEmpty(message = "班级不能为空")
    private String classname;

    private String img;

    private String tdescribe;

    private String location;

//    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date jointime;

    @NotEmpty(message = "姓名不能为空")
    private String realname;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getNumber() {
        return number;
    }

    public void setNumber(Long number) {
        this.number = number;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTdescribe() {
        return tdescribe;
    }

    public void setTdescribe(String tdescribe) {
        this.tdescribe = tdescribe;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getJointime() {
        return jointime;
    }

    public void setJointime(Date jointime) {
        this.jointime = jointime;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }
}