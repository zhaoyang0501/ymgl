package com.pzy.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/***
 *学生表
 */
@Entity
@Table(name = "t_xzqhsq")
public class Xzqhsq implements Serializable {
	private static final long serialVersionUID = 12L;
	@Id
	private String dm;
	private String name;
	private String sssfdm;
	private String xybj;
	public String getDm() {
		return dm;
	}
	public void setDm(String dm) {
		this.dm = dm;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSssfdm() {
		return sssfdm;
	}
	public void setSssfdm(String sssfdm) {
		this.sssfdm = sssfdm;
	}
	public String getXybj() {
		return xybj;
	}
	public void setXybj(String xybj) {
		this.xybj = xybj;
	}
	
}