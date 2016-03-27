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
@Table(name = "t_stroe")
public class Store implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String sbbh;
	private String  sblx;
	private String sbly;
	private String  cphm;
	private String  sbxh;
	private String  ccbh;
	private String  scqy;
	private String  sbrj;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+08:00")
	private Date dhrq;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+08:00")
	private Date qyrq;
	
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+08:00")
	private Date scrq;
	private String tbr;
	private String sbzt;
	private String remark;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSbbh() {
		return sbbh;
	}
	public void setSbbh(String sbbh) {
		this.sbbh = sbbh;
	}
	public String getSblx() {
		return sblx;
	}
	public void setSblx(String sblx) {
		this.sblx = sblx;
	}
	public String getSbly() {
		return sbly;
	}
	public void setSbly(String sbly) {
		this.sbly = sbly;
	}
	public String getCphm() {
		return cphm;
	}
	public void setCphm(String cphm) {
		this.cphm = cphm;
	}
	public String getSbxh() {
		return sbxh;
	}
	public void setSbxh(String sbxh) {
		this.sbxh = sbxh;
	}
	public String getCcbh() {
		return ccbh;
	}
	public void setCcbh(String ccbh) {
		this.ccbh = ccbh;
	}
	public String getScqy() {
		return scqy;
	}
	public void setScqy(String scqy) {
		this.scqy = scqy;
	}
	public String getSbrj() {
		return sbrj;
	}
	public void setSbrj(String sbrj) {
		this.sbrj = sbrj;
	}
	public Date getDhrq() {
		return dhrq;
	}
	public void setDhrq(Date dhrq) {
		this.dhrq = dhrq;
	}
	public Date getQyrq() {
		return qyrq;
	}
	public void setQyrq(Date qyrq) {
		this.qyrq = qyrq;
	}
	public Date getScrq() {
		return scrq;
	}
	public void setScrq(Date scrq) {
		this.scrq = scrq;
	}
	public String getTbr() {
		return tbr;
	}
	public void setTbr(String tbr) {
		this.tbr = tbr;
	}
	public String getSbzt() {
		return sbzt;
	}
	public void setSbzt(String sbzt) {
		this.sbzt = sbzt;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}