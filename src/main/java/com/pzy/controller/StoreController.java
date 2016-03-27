package com.pzy.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.entity.Record;
import com.pzy.entity.Store;
import com.pzy.service.RecordService;
import com.pzy.service.StoreService;
/***
 * 就业情况管理
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/store")
public class StoreController {
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private RecordService recordService;
	
	@RequestMapping("index")
	public String index(Model model) {
		return "admin/store/index";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create(Model model) {
		return "admin/store/create";
	}
	
	
	@RequestMapping(value = "/record", method = RequestMethod.GET)
	public String record(Model model) {
		model.addAttribute("stores",storeService.findAll());
		return "admin/store/record";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String create(Model model,Store store) {
		storeService.save(store);
		model.addAttribute("state","success");
		model.addAttribute("tip","添加成功！");
		return "admin/store/create";
	}
	
	@InitBinder  
	protected void initBinder(HttpServletRequest request,   ServletRequestDataBinder binder) throws Exception {   
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true)); 
	}  
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "start", defaultValue = "0") int start,
			@RequestParam(value = "length", defaultValue = "10") int length, 
			String name,
			String xq
			) throws ParseException {
		int pageNumber = (int) (start / length) + 1;
		int pageSize = length;
		Page<Store> childs = storeService.findAll(pageNumber, pageSize, name);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", childs.getContent());
		map.put("iTotalRecords", childs.getTotalElements());
		map.put("iTotalDisplayRecords", childs.getTotalElements());
		//map.put("echo", echo);
		return map;
	}
	
	@RequestMapping(value = "/records", method = RequestMethod.GET)
	@ResponseBody
	public List<Map<String, String>> records(Long start, Long end,Long storeid) throws ParseException {
		List<Record> recordAm=recordService.findAll(new java.util.Date(start*1000),new java.util.Date(end*1000),storeid,"上午");
		List<Record> recordPm=recordService.findAll(new java.util.Date(start*1000),new java.util.Date(end*1000),storeid,"上午");
		
		List<Map<String, String>> taskList = new ArrayList<Map<String, String>>();
			for (Record record:recordAm) {
				Map<String, String> recordMap = new HashMap<String, String>();
				recordMap.put("id",String.valueOf(record.getId()));
				recordMap.put("color", "#dd5600");
				recordMap.put("title", "温度"+record.getTemperature()+"度\n湿度"+record.getMoisture()+"\n状态"+record.getState());
				recordMap.put("start",DateFormatUtils.format( record.getRecordDate(), "yyyy-MM-dd"));
				recordMap.put("end", DateFormatUtils.format( record.getRecordDate(), "yyyy-MM-dd"));
				recordMap.put("allDay", "false");
				taskList.add(recordMap);
			}
			for (Record record:recordPm) {
				Map<String, String> recordMap = new HashMap<String, String>();
				recordMap.put("id",String.valueOf(record.getId()));
				recordMap.put("color", "#6666FF");
				recordMap.put("title", "温度"+record.getTemperature()+"度\n湿度"+record.getMoisture()+"\n状态"+record.getState());
				recordMap.put("start",DateFormatUtils.format( record.getRecordDate(), "yyyy-MM-dd"));
				recordMap.put("end", DateFormatUtils.format( record.getRecordDate(), "yyyy-MM-dd"));
				recordMap.put("allDay", "false");
				taskList.add(recordMap);
			}
		return taskList;
	}

	@RequestMapping(value = "/saveRecord", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> saveRecord(Record record) throws ParseException {
		recordService.save(record);
		Map<String,String> map=new HashMap<String,String>();
		map.put("state", "success");
		map.put("tip", "保存成功");
		return map;
	}

	
}
