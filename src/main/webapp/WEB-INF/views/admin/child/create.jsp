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
                        <h5>儿童信基础信息表添加 </h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12 b-r">
		                           <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/child/create" method="post">
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>儿童信基础信息表<h3></h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			<tr>
		                           				<td>儿童姓名</td>
		                           				<td> <input name='name' type="text" class="form-control"></td>
		                           				
		                           				<td>儿童性别</td>
		                           				<td>
												  <label class='checkbox-inline'>
												    <input type="radio" name="sex"  value="男" checked>
												    	男
												   </label>
												   <label class='checkbox-inline'>
												    <input type="radio" name="sex"  value="女">
												 	   女
												  </label>
		                           				</td>
		                           				
		                           				<td>出生日期</td>
		                           				<td> 
							                        <input name='birthDay' type="text" class="form-control input-group date" >
		                           				</td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>
		                           				<td>父亲姓名</td>
		                           				<td> <input name='fname' type="text" class="form-control"></td>
		                           				<td>父亲手机</td>
		                           				<td> <input name='ftel' type="text" class="form-control"></td>
		                           				<td>家庭电话</td>
		                           				<td> <input name='htel'  type="text" class="form-control"></td>
		                           			</tr>
		                           			<tr>
		                           				<td>母亲姓名</td>
		                           				<td> <input name='mname' type="text" class="form-control"></td>
		                           				<td>母亲手机</td>
		                           				<td> <input  name='mtel' type="text"  class="form-control"></td>
		                           				<td>是否有禁忌历</td>
		                           				<td> 
			                           				  <label class='checkbox-inline'>
													    	<input type="radio" name="taboo"  value="有" checked>有
													  </label>
													 
													  <label class='checkbox-inline'>
													   	 <input type="radio" name="taboo"  value="无">无
													  </label>
												</td>
		                           			</tr>
		                           			<tr>
		                           				<td>居住属性</td>
		                           				<td> 
		                           					<select name='jzsx' class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='常住'>常住</option>
		                           						<option value='暂住'>暂住</option>
		                           					</select>
		                           				</td>
		                           				<td>户口属性</td>
		                           				<td> 
		                           				<select name='hkxz' class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='本县'>本县</option>
		                           						<option value='本市'>本市</option>
		                           					</select>
		                           				</td>
		                           				<td>idcard</td>
		                           				<td> <input   name='idcard'  type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>
		                           				<td>家庭住址</td>
		                           				<td>
		                           					<select name='sqdz' class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value=''>--请选择市区--</option>
		                           					</select>
		                           				</td>
		                           				<td>
		                           				   <select name='xqdz' class="form-control" >
		                           						<option value=''>--请选择县区--</option>
		                           					</select>
		                           				</td>
		                           				<td><input name='xzdz'   placeholder="请填写乡镇" type="text" class="form-control"></td>
		                           				<td> <input name='czdq'  placeholder="请填写村庄" type="text" class="form-control"></td>
		                           				<td> <input name='jzd'   placeholder="请填写接种点"  type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>
		                           				<td>出生医院</td>
		                           				<td> 
		                           					<select name='sfyydz' class="form-control" >
		                           						<option value='13'>河北省-</option>
		                           					</select>
		                           				</td>
		                           				<td>
		                           				  <select name='sqyydz' class="form-control"  onchange="xzqhsq_change('xqyydz',this)">
		                           						<option value=''>--请选择市区--</option>
		                           					</select>
		                           				</td>
		                           				<td>
		                           					<select name='xqyydz' class="form-control"  >
		                           						<option value=''>--请选择县区--</option>
		                           					</select>
		                           				</td>
		                           				<td> <input name='yydz'  placeholder="请填写出生医院" type="text" class="form-control"></td>
		                           				<td> <input name='zsz'  placeholder="准生证"  type="text" class="form-control"></td>
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
									    					<li>添加新生儿信息，并转到接种乙肝</li>
									    					<li>无需手工绑定手机，如添加的手机是移动的，系统会自动提醒</li>
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
        	$(".input-group.date").datepicker({
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
