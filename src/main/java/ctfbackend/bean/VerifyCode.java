package ctfbackend.bean;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class VerifyCode {

	private String phoneNumber;
	private String randomCode;
	private Date lastSendTime;
	private String content;

	public VerifyCode() {
		super();
	}

	public VerifyCode(String phoneNumber, String randomCode, Date lastSendTime,
                      String content) {
		super();
		this.phoneNumber = phoneNumber;
		this.randomCode = randomCode;
		this.lastSendTime = lastSendTime;
		this.content = content;
	}

}
