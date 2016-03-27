package com.pzy.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonFormat;
/***
 *学生表
 */
@Entity
@Table(name = "t_child")
public class Child implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private String name;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+08:00")
	private Date createDate;
	
	private String sex;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+08:00")
	private Date birthday;
	
	private String fname;
	
	private String ftel;
	
	private String htel;
	
	private String mname;
	private String mtel;
	
	private String taboo;
	
	private String jzsx;
	
	private String hkxz;
	
	private String idcard;
	private String sqdz;
	private String xqdz;
	private String xzdz;
	
	private String czdq;
	
	private String jzd;
	
	private String sqyydz;
	
	private String xqyydz;
	
	private String sfyydz;
	
	private String yydz;
	
	private String zsz;
	private String remark;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFtel() {
		return ftel;
	}
	public void setFtel(String ftel) {
		this.ftel = ftel;
	}
	public String getHtel() {
		return htel;
	}
	public void setHtel(String htel) {
		this.htel = htel;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getTaboo() {
		return taboo;
	}
	public void setTaboo(String taboo) {
		this.taboo = taboo;
	}
	public String getJzsx() {
		return jzsx;
	}
	public void setJzsx(String jzsx) {
		this.jzsx = jzsx;
	}
	public String getHkxz() {
		return hkxz;
	}
	public void setHkxz(String hkxz) {
		this.hkxz = hkxz;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getSqdz() {
		return sqdz;
	}
	public void setSqdz(String sqdz) {
		this.sqdz = sqdz;
	}
	public String getXqdz() {
		return xqdz;
	}
	public void setXqdz(String xqdz) {
		this.xqdz = xqdz;
	}
	public String getXzdz() {
		return xzdz;
	}
	public void setXzdz(String xzdz) {
		this.xzdz = xzdz;
	}
	public String getCzdq() {
		return czdq;
	}
	public void setCzdq(String czdq) {
		this.czdq = czdq;
	}
	public String getJzd() {
		return jzd;
	}
	public void setJzd(String jzd) {
		this.jzd = jzd;
	}
	public String getSqyydz() {
		return sqyydz;
	}
	public void setSqyydz(String sqyydz) {
		this.sqyydz = sqyydz;
	}
	public String getXqyydz() {
		return xqyydz;
	}
	public void setXqyydz(String xqyydz) {
		this.xqyydz = xqyydz;
	}
	public String getSfyydz() {
		return sfyydz;
	}
	public void setSfyydz(String sfyydz) {
		this.sfyydz = sfyydz;
	}
	public String getYydz() {
		return yydz;
	}
	public void setYydz(String yydz) {
		this.yydz = yydz;
	}
	public String getZsz() {
		return zsz;
	}
	public void setZsz(String zsz) {
		this.zsz = zsz;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}