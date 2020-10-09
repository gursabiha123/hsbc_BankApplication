package com.Bank.entity;

import java.io.Serializable;
public class Usersdetails implements Serializable {

	private int customerid;
	private String name;
	private String PANno;
	private String formation;
	private String pph;
	private String pm;
	private String aph;
	private String amail;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPANno() {
		return PANno;
	}
	public void setPANno(String pANno) {
		PANno = pANno;
	}
	public String getFormation() {
		return formation;
	}
	public void setFormation(String formation) {
		this.formation = formation;
	}
	public String getPph() {
		return pph;
	}
	public void setPph(String pph) {
		this.pph = pph;
	}
	public String getPm() {
		return pm;
	}
	public void setPm(String pm) {
		this.pm = pm;
	}
	public String getAph() {
		return aph;
	}
	public void setAph(String aph) {
		this.aph = aph;
	}
	public String getAmail() {
		return amail;
	}
	public void setAmail(String amail) {
		this.amail = amail;
	}
}
