<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
     <link href="${pageContext.request.contextPath}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.min.css?v=4.1.0" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

</head>

<body >
    <div class="wrapper wrapper-content animated fadeInRight">
        
       <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>冷链档案查询</h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    
                    <div class="ibox-content">
                        <form role="form" class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputEmail2" class="sr-only">设备编码</label>
                                <input type="text" placeholder="设备编码" id="_name" class="form-control">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail4" class="sr-only">设备类型</label>
			                                   <select class="form-control " name="account">
				                                        <option>冷藏车</option>
				                                        <option>冰库</option>
                                   				 </select>
                            </div>
                            <button class="btn btn-primary" type="button" id='_search'>查询</button>
                        </form>
                    </div>
                    
                    <div class="ibox-content">
                         <table ID='dt_table_view' class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
									 <th>设备编号</th>
                                    <th>设备类型</th>
                                    <th>设备型号</th>
                                     <th>到货日期</th>
                                      <th>启用日期</th>
                                      <th>设备状态</th>
								</tr>
                            </thead>
                       		 <tbody>
                            </tbody>
                          </table>
                    </div>
                </div>
            </div>
        </div>
        
        
   </div>
    <script src="${pageContext.request.contextPath}/js/plugins/dataTables/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    
    <!-- Data Tables -->
    <script src="${pageContext.request.contextPath}/js/plugins/dataTables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/dataTables/dataTables.bootstrap.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/js/common.js?v=1.0.0"></script>
  
    <script src="${pageContext.request.contextPath}/js/jquerydatatable.defaults.js"></script>
  
  
    <script>
   	
   		
        $(document).ready(function(){
        	var table=$('#dt_table_view').DataTable( {
	            "ajax": {
	                "url": "http://127.0.0.1:8080/ymgl/admin/store/list",
	                "type": "POST"
	              },
				"columns" : [{
					"data" : "sbbh"
				}, {
					"data" : "sblx"
				},{
					"data" : "sbxh",
				},{
					"data" : "dhrq",
				},{
					"data" : "qyrq",
				},{
					"data" : "sbzt",
				}] ,
        		"initComplete": function () {
        			var api = this.api();
        			$("#_search").on("click", function(){
            		 api.draw();
        			} );
        			
        			
        		} 
        	 } ).on('preXhr.dt', function ( e, settings, data ) {
		        data.name = $("#_name").val();
		        return true;
		     } ).on('xhr.dt', function ( e, settings, json, xhr ) {
		    	 $(".dataTables_processing").hide();	
		     } )
			
        });
    </script>
</body>

</html>
