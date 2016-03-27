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
    
    <link href="${pageContext.request.contextPath}/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet">
    
     <link href="${pageContext.request.contextPath}/css/plugins/jsTree/style.min.css" rel="stylesheet">
    <style>
        .jstree-open > .jstree-anchor > .fa-folder:before {
            content: "\f07c";
        }
        
        .jstree-default .jstree-icon.none {
            width: 0;
        }
    </style> 
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
       <div class="row">
       	  <div class="col-sm-3">
               <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>设备列表</h5>
                    </div>
                    <div class="ibox-content">
                       <div id="jstree1">
                            <ul>
                                <li class="jstree-open">保定市
                                    <ul>
                                    <c:forEach items="${stores }" var="bean">
                                    	<li  data-jstree='{"type":"img"}' id='${bean.id}'>${bean.sbbh}(${bean.sblx }) </li>
                                    </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    
                    <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <h2>提示</h2> 
                         <ol>
						     <li>选择左侧设备，右侧显示该设备的温度/湿度情况</li>
						     <li>点击右侧日历中某一天可以记录当天的温度/湿度情况，注意只能记录当天的数据</li>
						     <li>日历中红色的框表示上午设备运行情况，蓝色框表示下午运行情况</li>
						</ol>
                    </div>
                 </div>
                    
                </div>
            </div>
          
           <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>记录情况
                        </h5>
                    </div>
                    <div class="ibox-content">
                        <div id="calendar"></div>
                    </div>
                </div>
            </div>
        </div>
   </div>
   
   
   <div class="modal fade" id='myModal'>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">温度/湿度登记</h4>
      </div>
      
      <div class="modal-body">
                <div class="tabs-container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="tabs_panels.html#tab-1" aria-expanded="true">上午</a>
                        </li>
                        <li class=""><a data-toggle="tab" href="tabs_panels.html#tab-2" aria-expanded="false">下午</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="panel-body">
                            	<form method="get" class="form-horizontal" id='form_am'>
                                    <div class="form-group">
                               			    <label class="col-sm-2 control-label">温度</label>
			                                <div class="col-sm-10">
			                                    <input name='temperature' type="text" class="form-control">
			                                </div>
                            		</div>
                            		 <div class="form-group">
                               			   <label class="col-sm-2 control-label">湿度</label>
			                                <div class="col-sm-10">
			                                    <input name='moisture' type="text" class="form-control">
			                                </div>
                            		</div>
                            		 <div class="form-group">
                               			   <label class="col-sm-2 control-label">设备状态</label>
			                                <div class="col-sm-10">
			                                     <select name='state'  class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='正常'>正常</option>
		                           						<option value='异常'>异常</option>
		                           					</select>
			                                </div>
                            		</div>
                            	</form>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="panel-body">
                            <form method="get" class="form-horizontal" id='form_pm'>
                                    <div class="form-group">
                               			    <label class="col-sm-2 control-label">温度</label>
			                                <div class="col-sm-10">
			                                    <input name='temperature' type="text" class="form-control">
			                                </div>
                            		</div>
                            		 <div class="form-group">
                               			   <label class="col-sm-2 control-label">湿度</label>
			                                <div class="col-sm-10">
			                                    <input name='moisture' type="text" class="form-control">
			                                </div>
                            		</div>
                            		 <div class="form-group">
                               			   <label class="col-sm-2 control-label">设备状态</label>
			                                <div class="col-sm-10">
			                                     <select name='state'  class="form-control" onchange="xzqhsq_change('xqdz',this)">
		                           						<option value='正常'>正常</option>
		                           						<option value='异常'>异常</option>
		                           					</select>
			                                </div>
                            		</div>
                            	</form>
                            </div>
                        </div>
                    </div>
			</div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" onclick="fun_save()">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

   
    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/fullcalendar/fullcalendar.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/plugins/jsTree/jstree.min.js"></script>
    
    <script>
		$.common.setContextPath('${pageContext.request.contextPath}');
		<c:if test="${state=='success'}">
	  		  toastr.success('${tip}');
	    </c:if>
		
		
        $(document).ready(function(){
        	$('#jstree1').jstree().on('changed.jstree', function (e, data) {
				if(data && data.selected && data.selected.length) {
					$("#storeid").val(data.selected);
					fun_query();
				}
			});
        	
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
        
        $('#calendar').fullCalendar({
            dayNames : [ '星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六' ],
			monthNames : [ '一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月' ],
			dayNamesShort : [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ],
			buttonText : {
				today : "今天",
				month : "月",
				week : "星期",
				day : "天"
			},
			titleFormat : {
				month : "yyyy MMMM",
			},
			header : {
				left : 'prevYear,prev,next,nextYear today',
				center : 'title',
				right : ""
			}, 
			 events: {
			    url : $.common.getContextPath() + "/admin/store/records",
			    data : {"storeid" : $('#storeid').val() }
			 },
	           dayClick : function(date, allDay, jsEvent, view) {
	        	   var selDate =$.fullCalendar.formatDate(date,'yyyy-MM-dd');
	        	   $("#recordDate").val(selDate);
	        	   $('#myModal').modal("show");
	        	},
				 
			 eventClick: function(calEvent, jsEvent, view) {
			}
			 
        });
        
        function fun_save(){
        	$.ajax({
    			type : "POST",
    			url : $.common.getContextPath() + "/admin/store/saveRecord",
    			dataType : "json",
    			async:false, 
    			data:{
    				"store.id":$("#storeid").val(),
    				"recordDate":$("#recordDate").val(),
    				"moisture":$("#form_am input[name='moisture']").val(),
    				"state":$("#form_am select[name='state']").val(),
    				"daytype":"上午",
    				"temperature":$("#form_pm input[name='temperature']").val()
    			},
    			success : function(json) {
    				if(json.state=='success'){
    				}else{
    					 toastr.error(json.tip);
    				}
    			}
    		});	
        	
        	$.ajax({
    			type : "POST",
    			url : $.common.getContextPath() + "/admin/store/saveRecord",
    			dataType : "json",
    			data:{
    				"store.id":$("#storeid").val(),
    				"recordDate":$("#recordDate").val(),
    				"moisture":$("#form_pm input[name='moisture']").val(),
    				"state":$("#form_pm select[name='state']").val(),
    				"daytype":"下午",
    				"temperature":$("#form_pm input[name='temperature']").val()
    			},
    			success : function(json) {
    				if(json.state=='success'){
    					 fun_query();
    					 $('#myModal').modal("hide");
    				}else{
    					 toastr.error(json.tip);
    				}
    			}
    		});	
        	
        }
        
        function fun_query(){
			var source = {
				 url : $.common.getContextPath() + "/admin/store/records",
				 data : {"storeid" : $('#storeid').val() }
			   };
			   $('#calendar').fullCalendar('removeEvents');
			   $('#calendar').fullCalendar('removeEventSource',source);
			   $('#calendar').fullCalendar('addEventSource', source);
      	}
        
	</script>
<input type="hidden" value="" id="storeid"/>
<input type="hidden" value="" id="recordDate"/>
</body>

</html>
