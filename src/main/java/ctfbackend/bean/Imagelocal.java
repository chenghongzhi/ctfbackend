package ctfbackend.bean;

import lombok.Data;

import java.util.Date;
public class Imagelocal {

    private Long id;

    private String iname;

    private String size;

    private String ports;

    private Date createdtime;

    private String idescribe;

    private String imageid;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIname() {
        return iname;
    }

    public void setIname(String iname) {
        this.iname = iname;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getPorts() {
        return ports;
    }

    public void setPorts(String ports) {
        this.ports = ports;
    }

    public Date getCreatedtime() {
        return createdtime;
    }

    public void setCreatedtime(Date createdtime) {
        this.createdtime = createdtime;
    }

    public String getIdescribe() {
        return idescribe;
    }

    public void setIdescribe(String idescribe) {
        this.idescribe = idescribe;
    }

    public String getImageid() {
        return imageid;
    }

    public void setImageid(String imageid) {
        this.imageid = imageid;
    }
}