<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

</head>

<body >
    <div class="wrapper wrapper-content animated fadeInRight">
        
       <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-title">
                        <h5>冷链管理 </h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    
                    <div class="ibox-content">
                        <form role="form" class="form-inline">
                            <div class="form-group">
                                <label for="exampleInputEmail2" class="sr-only">设备编码</label>
                                <input type="email" placeholder="请输入用户名" id="exampleInputEmail2" class="form-control">
                            </div>
                            <div class="form-group">
                               <label for="exampleInputEmail4" class="sr-only">设备类型</label>
			                                   <select class="form-control " name="account">
				                                        <option>冷藏车</option>
				                                        <option>选项 2</option>
				                                        <option>选项 3</option>
				                                        <option>选项 4</option>
                                   				 </select>
                            </div>
                            <button class="btn btn-primary" type="submit">查询</button>
                        </form>
                    </div>
                    
                    <div class="ibox-content">
                         <table class="table table-striped table-bordered table-hover dataTables-example">
                            <thead>
                                <tr>
                                    <th>设备编号</th>
                                    <th>设备类型</th>
                                    <th>设备型号</th>
                                     <th>到货日期</th>
                                      <th>启用日期</th>
                                     <th>设备状态</th>
                                       <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="gradeX">
                                     <th>10023</th>
                                    <th>冷藏车</th>
                                    <th>RT-1023</th>
                                     <th>2014-04-04</th>
                                       <th>2016-04-04</th>
                                    <th><span class="label label-info">启用</span></th>
                                     <th> <a href="#">操作</a> </th>
                                </tr>
                                 <tr class="gradeX">
                                     <th>10024</th>
                                    <th>冷藏车2</th>
                                    <th>RT-1025</th>
                                     <th>2014-04-04</th>
                                       <th>2016-04-04</th>
                                    <th><span class="label label-info">启用</span></th>
                                     <th> <a href="#">操作</a> </th>
                                </tr>
                                 <tr class="gradeX">
                                     <th>100278</th>
                                    <th>冷藏车2</th>
                                    <th>RT-1025</th>
                                     <th>2014-04-04</th>
                                       <th>2016-04-04</th>
                                    <th><span class="label label-danger">停用</span></th>
                                       <th> <a href="#">操作</a> </th>
                                </tr>
                                 <tr class="gradeX">
                                     <th>10026</th>
                                    <th>冷藏车2</th>
                                    <th>RT-1025</th>
                                     <th>2014-04-04</th>
                                       <th>2016-04-04</th>
                                    <th><span class="label label-info">启用</span></th>
                                     <th> <a href="#">操作</a> </th>
                                </tr>
                                </tbody>
                                </table>
                                <nav>
  <ul class="pagination" style="float: right;">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
                    </div>
                </div>
            </div>
        </div>
        
        
   </div>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/js/content.min.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/iCheck/icheck.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    
    <script>
        $(document).ready(function(){
        	$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})
        	$(".input-group.date").datepicker({minViewMode:1,keyboardNavigation:false,forceParse:false,autoclose:true,todayHighlight:true});
        
        });
    </script>
</body>

</html>
