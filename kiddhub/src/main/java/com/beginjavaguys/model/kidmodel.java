package com.beginjavaguys.model;

public class kidmodel {
	private String pid;
	private String pname;
	private String qty;
	private String cost;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public kidmodel(String pid,String pname,String qty,String cost)
	{
	this.pid = pid;
		this.pname =pname;
		this.qty =qty;
		this.cost =cost;
	}
public kidmodel()
{}
}
