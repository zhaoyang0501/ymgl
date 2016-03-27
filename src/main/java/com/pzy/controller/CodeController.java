package com.pzy.controller;
import java.util.HashMap;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.pzy.service.XzqhService;
/***
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/code")
public class CodeController {
	
	@Autowired
	private XzqhService xzqhService;
	
	@RequestMapping(value = "/xzqhsq")
	@ResponseBody
	public Map<String, Object> findXzqhsq() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", xzqhService.listAllXzqhsq("13"));
		map.put("state", "success");
		map.put("msg", "成功");
		return map;
	}
	
	@RequestMapping(value = "/xzqhxq")
	@ResponseBody
	public Map<String, Object> findXzqhxq(String sq ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", xzqhService.listAllXzqhxq(sq));
		map.put("state", "success");
		map.put("msg", "成功");
		return map;
	}
}
