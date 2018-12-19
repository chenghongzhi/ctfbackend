package ctfbackend.bean;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.sql.Date;
import java.sql.Timestamp;


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

    private Timestamp jointime;
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

    public Timestamp getJointime() {
        return jointime;
    }

    public void setJointime(Timestamp jointime) {
        this.jointime = jointime;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }
}