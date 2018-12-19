package ctfbackend.bean;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class CourseTemplete {
    private Long id;

    private String cname;

    private Date createtime;

    private String cdescribe;

    private String img;

    private String createdby;

    private List<Imagelocal> imagelocals;
}