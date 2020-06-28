package net.vicp.zyl_me.model;

public class FeedBackBean {
	private long feedid;
	private String name;

	private String subject;

	private String msg;
	
	private String time;

	public FeedBackBean(String name, String subject, String msg) {
		super();
		this.name = name;
		this.subject = subject;
		this.msg = msg;
	}

	public FeedBackBean(long feedid, String name, String subject, String msg,String time) {
		super();
		this.feedid = feedid;
		this.name = name;
		this.subject = subject;
		this.msg = msg;
		this.time=time;
	}

	public long getFeedid() {
		return feedid;
	}

	public String getMsg() {
		return msg;
	}

	public String getName() {
		return name;
	}

	
	
	public String getSubject() {
		return subject;
	}
	
	public String getTime() {
		return time;
	}

	public void setFeedid(long feedid) {
		this.feedid = feedid;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
}
