package com.nyp.org.member;

public class MemberVO {
	private int seq;
	private String name;
	private String id;
	private String pwd;
	
	public MemberVO() {
		super();
	}
	
	public MemberVO(int seq, String name, String id, String pw, String gender, String joindate) {
		super();
		this.seq = seq;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.gender = gender;
		this.joindate = joindate;
	}
	

	@Override
	public String toString() {
		return "MemberVO [seq=" + seq + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", gender=" + gender
				+ ", joindate=" + joindate + "]";
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	private String gender;
	private String joindate;

}
