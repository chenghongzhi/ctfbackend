package ctfbackend.bean;

import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import java.io.Serializable;
import java.util.Date;

@ToString
public class Admin implements Serializable {

    private Integer id;
    @NotEmpty(message = "用户名不能为空")
    @Length(min = 6, max = 12, message ="用户名应该在6-12长度之间")
    private String username;
    @NotEmpty(message = "密码不能为空")
    @Length(min = 6, max = 16, message = "密码长度应该在6-16长度之间")
    private String password;

    private String salt;

    private Date lastlogin;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public Date getLastlogin() {
        return lastlogin;
    }

    public void setLastlogin(Date date) {
        this.lastlogin = date;
    }

    public String getCredentialsSalt() {
        return username + salt;
    }

}