package com.pzy.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
/***
 *学生表
 */
@Entity
@Table(name = "t_xzqhxq")
public class Xzqhxq implements Serializable {
	private static final long serialVersionUID = 12L;
	@Id
	private String dm;
	private String name;
	private String sssqdm;
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
	public String getSssqdm() {
		return sssqdm;
	}
	public void setSssqdm(String sssfdm) {
		this.sssqdm = sssfdm;
	}
	public String getXybj() {
		return xybj;
	}
	public void setXybj(String xybj) {
		this.xybj = xybj;
	}
	
}