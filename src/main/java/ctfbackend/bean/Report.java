package ctfbackend.bean;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class Report
{

    private Long id;

    private String cname;

    private String sname;

    private Long tmpId;

    private Long stuId;

    private Long tchId;

    private Long courseId;

    private String grade;

    private Date createdtime;

    private String remark;

    private String content;

    private CourseTemplete courseTemplete;

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

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Long getTmpId() {
        return tmpId;
    }

    public void setTmpId(Long tmpId) {
        this.tmpId = tmpId;
    }

    public Long getStuId() {
        return stuId;
    }

    public void setStuId(Long stuId) {
        this.stuId = stuId;
    }

    public Long getTchId() {
        return tchId;
    }

    public void setTchId(Long tchId) {
        this.tchId = tchId;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public CourseTemplete getCourseTemplete() {
        return courseTemplete;
    }

    public void setCourseTemplete(CourseTemplete courseTemplete) {
        this.courseTemplete = courseTemplete;
    }

//private Student student;
   
}