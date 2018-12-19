package ctfbackend.bean;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Data
public class Course {
    private Long id;
    @NotEmpty(message = "课程名不能为空")
    private String cname;
    @NotNull
    private Long tch_Id;
    @NotNull(message = "人数不能为空")
    private Integer count;

    private Timestamp createdtime;
    @NotNull(message = "state不能为空")
    private Integer state;

    private String cdescribe;

    private String tag;

    private String img;

    private Teacher teacher;

    private List<CourseTemplete> courseTempletes;

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

    public Long getTch_id() {
        return tch_Id;
    }

    public void setTch_id(Long tch_id) {
        this.tch_Id = tch_id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Timestamp getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Timestamp createdtime) {
        this.createdtime = createdtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCdescribe() {
        return cdescribe;
    }

    public void setCdescribe(String cdescribe) {
        this.cdescribe = cdescribe;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public List<CourseTemplete> getCourseTempletes() {
        return courseTempletes;
    }

    public void setCourseTempletes(List<CourseTemplete> courseTempletes) {
        this.courseTempletes = courseTempletes;
    }
}