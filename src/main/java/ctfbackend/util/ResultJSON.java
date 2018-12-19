package ctfbackend.util;

import lombok.Data;

@Data
public class ResultJSON {
	
	 	private static final String OK = "ok";
	    private static final String ERROR = "error";

	    private Meta meta;     
	    private Object data;  

	    public ResultJSON success() {
	        this.meta = new Meta(true, OK);
	        return this;
	    }

	    public ResultJSON success(Object data) {
	        this.meta = new Meta(true, OK);
	        this.data = data;
	        return this;
	    }

	    public ResultJSON failure() {
	        this.meta = new Meta(false, ERROR);
	        return this;
	    }

	    public ResultJSON failure(String message) {
	        this.meta = new Meta(false, message);
	        return this;
	    }

	    public Meta getMeta() {
	        return meta;
	    }

	    public Object getData() {
	        return data;
	    }

	    public class Meta {

	        private boolean success;
	        private String message;

	        public Meta(boolean success) {
	            this.success = success;
	        }

	        public Meta(boolean success, String message) {
	            this.success = success;
	            this.message = message;
	        }

	        public boolean isSuccess() {
	            return success;
	        }

	        public String getMessage() {
	            return message;
	        }
	    }
}