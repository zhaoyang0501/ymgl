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

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        
       <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>冷链新增 <small>冷链新增</small></h5>
                        <div class="ibox-tools">
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-8 b-r">
                        	<form method="get" class="form-horizontal">
                                    <div class="form-group">
                               			 <label class="col-sm-2 control-label">设备编码</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">设备类型</label>
			                                <div class="col-sm-10">
			                                   <select class="form-control m-b" name="account">
				                                        <option>冷藏车</option>
				                                        <option>选项 2</option>
				                                        <option>选项 3</option>
				                                        <option>选项 4</option>
                                   				 </select>
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">设备来源</label>
			                                <div class="col-sm-10">
			                                    <select class="form-control m-b" name="account">
				                                        <option>中央财政</option>
				                                        <option>选项 2</option>
				                                        <option>选项 3</option>
				                                        <option>选项 4</option>
                                   				 </select>
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">车牌号码/驾驶员</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">设备型号</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">出厂编号</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">生产企业</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">设备容积</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">到货日期</label>
			                                <div class="col-sm-10">
			                                    <div class="input-group date">
					                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					                                <input type="text" class="form-control" value="2014-11-11">
					                            </div>

			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">启用日期</label>
			                                <div class="col-sm-10">
			                                    <div class="input-group date">
					                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					                                <input type="text" class="form-control" value="2014-11-11">
					                            </div>
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>

                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">生产日期</label>
			                                <div class="col-sm-10">
			                                    <div class="input-group date">
					                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					                                <input type="text" class="form-control" value="2014-11-11">
					                            </div>
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">设备当前状态</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		
                            		<div class="form-group">
                               			 <label class="col-sm-2 control-label">备注</label>
			                                <div class="col-sm-10">
			                                    <input type="text" class="form-control">
			                                </div>
                            		</div>
                            		<div class="hr-line-dashed"></div>
                            		<div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="submit">取消</button>
                                </div>
                            </div>
                                </form>
                            </div>
                            <div class="col-sm-4">
                                <h4>提示</h4>
                                <ol>
							    <li>设备编码限制为非0的数字</li>
							    <li>设备类型除冷藏车需要填写车牌/驾驶人外，选择其他类型讲显示为设备名称</li>
							     <li>如果没有温度自动采集设备，【绑定温度 自动采集设备】可以为空</li>
							</ol>
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
