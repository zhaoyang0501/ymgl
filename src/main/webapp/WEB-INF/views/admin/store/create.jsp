<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="shortcut icon" href="favicon.ico">
     <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min.css?v=4.1.0" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
       <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>冷链建档 </h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12 b-r">
		                           <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/store/create" method="post">
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>冷链建档表<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			<tr>
		                           				<td>设备编号</td>
		                           				<td> <input name='sbbh' type="text" class="form-control"></td>
		                           				
		                           				<td>设备类型</td>
		                           				<td>
												   <select name='sblx' class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='冷藏车'>冷藏车</option>
		                           						<option value='冰柜'>冰柜</option>
		                           					</select>
		                           				</td>
		                           				
		                           				<td>设备来源</td>
		                           				<td> 
							                        <select name='sbly' class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='中央财政'>中央财政</option>
		                           						<option value='地方'>地方</option>
		                           					</select>
		                           				</td>
		                           				
		                           			</tr>
		                           			
		                           			
		                           			<tr>
		                           				<td>车牌号/驾驶员</td>
		                           				<td> <input name='cphm' type="text" class="form-control"></td>
		                           				<td>设备型号</td>
		                           				<td> <input name='sbxh' type="text" class="form-control"></td>
		                           				<td>出厂编号</td>
		                           				<td> <input name='ccbh'  type="text" class="form-control"></td>
		                           			</tr>
		                           			<tr>
		                           				<td>生产企业</td>
		                           				<td> <input name='scqy' type="text" class="form-control"></td>
		                           				<td>设备容积</td>
		                           				<td> <input  name='sbrj' type="text"  class="form-control"></td>
		                           				<td>到货日期</td>
		                           				<td> 
			                           				 <input  name='dhrq' type="text"  class="form-control   date">
												</td>
		                           			</tr>
		                           			<tr>
		                           				<td>启用日期</td>
		                           				<td> 
		                           					 <input  name='qyrq' type="text"  class="form-control   date">
		                           				</td>
		                           				<td>填表人</td>
		                           				<td> 
		                           				<input  name='tbr' type="text"  class="form-control">
		                           				</td>
		                           				<td>生产日期</td>
		                           				<td><input  name='scrq' type="text"  class="form-control   date"></td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>
		                           				<td>设备当前状态</td>
		                           				<td colspan="5">
		                           					  <label class='checkbox-inline'>
												    <input type="radio" name="sbzt"  value="1" checked>
												    	启用
												   </label>
												   <label class='checkbox-inline'>
												    <input type="radio" name="sbzt"  value="0">
												 	  	停用 
												  </label>
		                           				</td>
		                           			</tr>
		                           			
		                           			
		                           			
		                           			<tr>
		                           				<td>备注</td>
		                           				<td colspan="5"> 
		                           					<textarea name='remark' rows="4" cols="" style="width: 80%"></textarea>
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				<td>提示</td>
		                           				<td colspan="5"> 
		                           					  <h4>提示</h4>
							                                <ol>
														    <li>设备编码限制为非0的数字</li>
														    <li>设备类型除冷藏车需要填写车牌/驾驶人外，选择其他类型讲显示为设备名称</li>
														     <li>如果没有温度自动采集设备，【绑定温度 自动采集设备】可以为空</li>
														</ol>
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				<td colspan="6"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="submit">保存内容</button>
		                                   				    <button class="btn btn-white" type="submit">取消</button>
		                               				 </div>
		                           				</td>
		                           			</tr>
		                           		</tbody>
		                           	</table> 
		                           	</form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
   </div>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js?v=1.0.0"></script>
    
    <script>
		$.common.setContextPath('${pageContext.request.contextPath}');
		<c:if test="${state=='success'}">
	  		  toastr.success('${tip}');
	    </c:if>
		
		function xzqhsq_change(id,obj){
			$.ajax({
    			type : "get",
    			url : $.common.getContextPath() + "/admin/code/xzqhxq?sq="+$(obj).val(),
    			dataType : "json",
    			success : function(json) {
    				if(json.state=='success'){
    					$("select[name='"+id+"']").empty();
    					$("select[name='"+id+"']").append("<option value=''>--请选择地市--</option>");
    					$(  json.data).each(function( index ) {
    						$("select[name='"+id+"']").append("<option value='"+ json.data[index].dm+"'>"+ json.data[index].name+"</option>");
    						  console.log( index + ": " + json.data[index].name);
    						});
    				}else{
    				}
    			}
    		});	
		}
		function init_xzqhsq(){
	    	$.ajax({
    			type : "get",
    			url : $.common.getContextPath() + "/admin/code/xzqhsq",
    			dataType : "json",
    			success : function(json) {
    				if(json.state=='success'){
    					$(  json.data).each(function( index ) {
    						$("select[name='sqdz'] , select[name='sqyydz']").append("<option value='"+ json.data[index].dm+"'>"+ json.data[index].name+"</option>");
    						  console.log( index + ": " + json.data[index].name);
    						});
    				}else{
    				}
    			}
    		});	
	    }
        $(document).ready(function(){
        	init_xzqhsq();
        	$(".date").datepicker({
        		language:  'zh-CN',
    	        weekStart: 1,
    	        todayBtn:  1,
    	        format:'yyyy-mm-dd',
    			autoclose: 1,
    			todayHighlight: 1,
    			startView: 2,
    			minView: 2,
    			forceParse: 0
        		});
        });
    </script>
</body>

</html>
