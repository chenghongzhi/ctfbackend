package ctfbackend.bean;

import lombok.Data;

import java.util.Date;

@Data
public class Imagelocal {

    private Long id;

    private String iname;

    private String size;

    private String ports;

    private Date createdtime;

    private String idescribe;

    private String imageid;

}