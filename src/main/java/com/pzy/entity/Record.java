package com.pzy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
/***
 * 对应数据库 公告
 * @author Administrator
 *
 */
@Entity
@Table(name = "t_record")
public class Record {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private Double temperature;
	
	private Double moisture;
	
	/**正常，异常*/
	private String state;
	/**上午，下午*/
	private String daytype;
	
	@ManyToOne
	private Store store;
	
	private Date recordDate;
	
	private Date createDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public Date getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(Date recordDate) {
		this.recordDate = recordDate;
	}

	public Double getTemperature() {
		return temperature;
	}

	public void setTemperature(Double temperature) {
		this.temperature = temperature;
	}

	public Double getMoisture() {
		return moisture;
	}

	public void setMoisture(Double moisture) {
		this.moisture = moisture;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDaytype() {
		return daytype;
	}

	public void setDaytype(String daytype) {
		this.daytype = daytype;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
