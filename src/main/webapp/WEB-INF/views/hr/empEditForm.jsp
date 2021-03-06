<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class="loading" data-textdirection="ltr">
<!-- BEGIN: Head-->
<style type="text/css">
input::placeholder { text-align: center; }
.searchEmp{
	display:flex;
}

#zipInput{
	cursor: pointer;
}

</style>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Input - Vuexy - Bootstrap HTML admin template</title>
    <link rel="apple-touch-icon" href="/resources/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendors/css/forms/select/select2.min.css">
    <link rel="stylesheet" type="text/css" href="/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/colors.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/components.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/themes/bordered-layout.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/core/menu/menu-types/horizontal-menu.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/plugins/forms/pickers/form-flat-pickr.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/pages/app-user.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern  navbar-floating footer-static   menu-collapsed" data-open="click" data-menu="vertical-menu-modern" data-col="">

    <!-- BEGIN: Header-->
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-header row">
			    <div class="pageTitle" style="margin: 15px;">
		           <h2 class="content-header-title float-left mb-0">????????? ??????????????????</h2><i style="height: 2rem; width: 3rem;" data-feather='settings'></i>
		           <div class="breadcrumb-wrapper">
		               <ol class="breadcrumb">
		                   <li class="breadcrumb-item">
		                   </li>
		               </ol>
		           </div>
				</div>
            </div>
            <div class="content-body">
                <!-- users edit start -->
                <section class="app-user-edit">
                    <div class="card">
                        <div class="card-body">
                            <div class="tab-content">
                                <!-- Account Tab starts -->
                                <div class="tab-pane active" id="account" aria-labelledby="account-tab" role="tabpanel">
                                    <!-- users edit media object ends -->
                <!-- users edit account form start -->
							<form:form modelAttribute="emp" method="post"  enctype ="multipart/form-data" action="/hr/empEditProcess" class="form-validate" id="emp">
                                    <!-- users edit media object start -->
                                    <div class="media mb-2">
                                        <img src="/resources/images/emp/${emp.photoFlpth}" alt="users avatar" id="userImg" class="user-avatar users-avatar-shadow rounded mr-2 my-25 cursor-pointer" height="95" width="90" />
                                        <div class="media-body mt-50">
                                            <div class="col-12 d-flex mt-1 px-0">
                                                <label class="btn btn-primary mr-75 mb-0" for="change-picture">
                                                    <span class="d-n one d-sm-block">UPLOAD</span>
                                                    <input class="form-control" type="file" name="photoFlpthFile" id="change-picture" hidden accept="image/jpg" />
                                                    <span class="d-block d-sm-none">
                                                        <i class="mr-0" data-feather="edit"></i>
                                                    </span>
                                                </label>
                                                    <button type="button" class="btn btn-outline-primary" id="fileCheck" data-toggle="modal" data-target=".img" style="padding:10px;">
													    File Check!
													</button>
													<input type="hidden" name="count" value="0">
                                            </div>
                                        </div>
                                    </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="empNo">????????????</form:label>
                                                    <form:input path="empNo" type="text" id="empNo" class="form-control" placeholder="????????????" value="${emp.empNo}" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="empNm">??????</form:label>
                                                    <form:input path="empNm" type="text" class="form-control" placeholder="??????" />
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="brthdy">????????????</form:label>
                                                    <form:input path="brthdy" type="text" class="form-control birthdate-picker" placeholder="YYYY-MM-DD"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="email">???????????????</form:label>
                                                    <form:input path="email" type="email" class="form-control" placeholder="???????????????" name="email" id="email" />
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="phonenum">???????????????</form:label>
                                                    <form:input path="phonenum" type="text" class="form-control" placeholder="?????????????????? ?????? ????????? ?????? ???????????????." readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="encpnDe">????????????</form:label>
                                                    <form:input path="encpnDe" type="text" class="form-control birthdate-picker" placeholder="YYYY-MM-DD"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="deptVO.deptCode">????????????</form:label>
                                                    <form:select path="deptVO.deptCode" class="form-control" id="deptSelect">
                                                        <form:option value="null" label="????????????" selected="true" />
                                                        <form:option value="null" label="" disabled="true"/>
                                                        <form:option value="QCT" label="???????????????"/>
                                                        <form:option value="SLT" label="?????????"/>
                                                        <form:option value="CMT" label="???????????????"/>
                                                        <form:option value="RDT" label="?????????"/>
                                                        <form:option value="DST" label="?????????"/>
                                                        <form:option value="GAT" label="?????????"/>
                                                        <form:option value="ACT" label="?????????"/>
                                                        <form:option value="HRT" label="?????????"/>
                                                        <form:option value="MND" label="?????????"/>
                                                        <form:option value="BSD" label="?????????"/>
                                                        <form:option value="RDD" label="?????????"/>
                                                        <form:option value="ADD" label="?????????"/>
                                                        <form:option value="DTR" label="??????"/>
                                                        <form:option value="CEO" label="??????"/>
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="clsfCode">??????</form:label>
                                                    <form:select path="clsfCode" class="form-control" id="clsfSelect">
                                                        <form:option value="null" label="????????????" selected="true" />
                                                        <form:option value="null" label="" disabled="true"/>
                                                        <form:option value="C8" label="??????" />
                                                        <form:option value="C7" label="??????" />
                                                        <form:option value="C6" label="??????" />
                                                        <form:option value="C5" label="??????" />
                                                        <form:option value="C4" label="??????" />
                                                        <form:option value="C3" label="??????" />
                                                        <form:option value="C2" label="??????" />
                                                        <form:option value="C1" label="??????" />
                                                    </form:select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="lxtnNo">????????????</form:label>
                                                    <form:input type="text" path="lxtnNo" class="form-control" placeholder="????????????" name="lxtnNo" value="${emp.lxtnNo}" readonly="true"/>
                                                </div>
                                            </div>
                                             <div class="col-12">
                                                <h4 class="mb-1 mt-2">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin font-medium-4 mr-25"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                                                    <span class="align-middle">Address</span>
                                                </h4>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="zip">????????????</form:label>
		                                            <form:input path="zip" type="text" class="form-control" placeholder="????????????" name="zip" id="zipInput" readonly="true" style="background:white;" onclick="openHomeSearch();"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="adres1">????????????</form:label>
                                                    <form:input path="adres1" type="text" class="form-control" placeholder="????????????" name="adres1" id="adres1"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="adres2">????????????</form:label>
                                                    <form:input path="adres2" type="text" class="form-control" placeholder="????????????"  />
                                                </div>
                                            </div>
                                            <div class="col-12 d-flex flex-sm-row flex-column mt-2" style="display: flex; justify-content: space-between;">
                                                <button type="button" id="empList" class="create-new btn btn-primary">??????</button>
                                                <div>
	                                                <input type="submit" id="update" value="??????" class="create-new btn btn-primary" onclick="javascript:empSubmit();"/>
	                                                <input type="button" value="??????" class="btn btn-outline-primary waves-effect" onclick="javascript:retireEmp();">
                                                </div>
                                            </div>
                                        </div>
                                        
                  <div class="modal fade text-left modal-primary retire" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">?????? ?????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            	
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				            		<div class="form-group">
                                       <form:label path="retireDe">????????????(?????? ????????? ?????? ????????? ?????? ???????????????.)</form:label>
                                       <form:input path="retireDe" type="text" id="retireDe" class="form-control birthdate-picker" placeholder="YYYY-MM-DD" style="text-align: center;"/>
                                   </div>
				                ????????? ???????????? ?????? ????????? ?????? ?????? ?????????.
				            </div>
				            <div class="modal-footer" style="justify-content: center;">
				                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:finalRetireCheck(true);">YES</button>
				                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:finalRetireCheck(false);">NO</button>
				            </div>
				        </div>
				    </div>
				</div>
                                        
							</form:form>
            <!-- users edit account form ends -->
                                </div>
                                <!-- Account Tab ends -->

                            </div>
                        </div>
                    </div>
                </section>
                                <!-- ????????? ?????? ????????? ???????????? -->
				<!-- Modal start -->
				<div class="modal fade text-left modal-primary jpg img" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">????????? ?????? ????????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ????????? ????????? jpg ???????????? ????????? ???????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				
				<div class="modal fade text-left modal-primary fileSize img" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">????????? ?????? ????????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                5MB ????????? ???????????? ????????? ???????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				
				<div class="modal fade text-left modal-primary success img" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">????????? ?????? ????????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ????????? ???????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				<div class="modal fade text-left modal-primary check" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">File Check! ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ????????? ?????? ????????? ??? File Check! ????????? ???????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				<div class="modal fade text-left modal-primary select" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">?????????????????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ?????? / ???????????? / ??????????????? /<br> 
				                ???????????? / ???????????? / ?????? / <br>
				                ???????????? / ??????????????? ???????????????????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				<div class="modal fade text-left modal-primary final" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">?????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ?????????????????????????
				            </div>
				            <div class="modal-footer" style="justify-content: center;">
				                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:finalCheck(true);">yEs</button>
				                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="javascript:finalCheck(false);">nO</button>
				            </div>
				        </div>
				    </div>
				</div>
				
				<div class="modal fade text-left modal-primary retireDate" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel140" aria-hidden="true">
				    <div class="modal-dialog modal-dialog-centered" role="document">
				        <div class="modal-content">
				            <div class="modal-header" style="justify-content: center;">
				                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center;font-size: 13px;">???????????? ??????</h5>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				                    <span aria-hidden="true">&times;</span>
				                </button>
				            </div>
				            <div class="modal-body" style="text-align: center;font-size: 15px;">
				                ??????????????? ??????????????? ?????? ???????????????.
				            </div>
				        </div>
				    </div>
				</div>
				
				
				<!-- Modal end -->
                <!-- users edit ends -->

            </div>
        </div>
    </div>
    <div class="imgs_wrap"></div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <footer class="footer footer-static footer-light">
    </footer>
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->

    <!-- BEGIN: Vendor JS-->
    <script src="/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/resources/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <script src="/resources/vendors/js/pickers/flatpickr/flatpickr.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/resources/js/core/app-menu.js"></script>
    <script src="/resources/js/core/app.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="/resources/js/scripts/forms/form-tooltip-valid.js"></script>
    <script src="/resources/js/scripts/pages/app-user-edit.js"></script>
    <script src="/resources/js/scripts/components/components-navs.js"></script>
    <!-- END: Page JS-->
    
	<!-- ???????????? ?????? API -->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
    
<script>
$(window).on('load', function() {
    if (feather) {
        feather.replace({
            width: 14,
            height: 14
        });
    }
    fileCheckReadonly();
});
      
    //?????? ???????????? ??????
function openHomeSearch(){
	new daum.Postcode({
		oncomplete:function(data){
		$('[name=zip]').val(data.zonecode);
		$('[name=adres1]').val(data.address);
		}
	}).open();
}
    
//-----------------------------------------------------------------------
      


var count = 0;
var imgSrc = document.getElementById("userImg").src;
var empNo = document.getElementById('empNo').value;
var file = document.getElementById('change-picture').value;
var url = 'resources/images/emp/' + empNo;

// ?????? ????????? ?????? ?????? ?????? ?????? ????????? ?????? ???????????? ??????
function fileCheckReadonly(){
	console.log(imgSrc)
	if((imgSrc.indexOf(url)) >= 0){
		$("#fileCheck").attr('disabled', true);
		count = 1;
	}
}
// ????????? ?????? ???????????? ??? ?????? ?????? ?????? ?????? ?????????
$("#change-picture").change(function(e){
	$("#fileCheck").attr('disabled', false);
	count = 0;
})

// ?????? ???????????? ?????? ?????? ?????? ??????
function checkExtension(fileName, fileSize){
	var regex = new RegExp("(.*?\.(jpg)$)");
	var maxSize = 5242880; // 5mb(5242880)	
	if(fileSize >= maxSize){
		$(".fileSize").modal();
		count = 0;
		return false;
	}
	// ???????????? ????????? ??????
	if(!regex.test(fileName)){
		$(".jpg").modal();
		count = 0;
		return false;
	}
	// ????????? ?????????
	$(".success").modal();
	count = 1;
	imgSrc = "/resources/images/emp/"+empNo+".jpg";
	return false;
}


$("#fileCheck").on("click", function(){
	imgSrc = document.getElementById("userImg").src
	  
	console.log(imgSrc.indexOf(url));
	count = 1;
	if(imgSrc.indexOf(url) == -1){
		var inputFile = $("#change-picture");
		var files = inputFile[0].files;
 	  
		console.log("imgSrc : " + imgSrc);
 	  
		if(!checkExtension(files[0].name, files[0].size)){	// ???????????? ???
			// ???????????? ??????
			return false;
 		}
	}
});
      



function empSubmit(){
console.log("***********", count);
	var empNm = document.getElementById('empNm').value;
	var brthdy = document.getElementById('brthdy').value;
	var email = document.getElementById('email').value;
	var encpnDe = document.getElementById('encpnDe').value;
	var zipInput = document.getElementById('zipInput').value;
	var adres1 = document.getElementById('adres1').value;
	var deptSelect = document.getElementById('deptSelect').value;
	var clsfSelect = document.getElementById('clsfSelect').value;
	
	if(empNm != "" && brthdy != "" && email != "" && encpnDe != "" && zipInput != "" && adres1 != "" && deptSelect != "null" && clsfSelect != "null" && count > 0){
		$(".final").modal();
	}
	if(!(empNm != "" && brthdy != "" && email != "" && encpnDe != "" && zipInput != "" && adres1 != "" && deptSelect != "null" && clsfSelect != "null")){
		$(".select").modal();
		return false;
	}
	if(count == 0){
		$(".check").modal();
		return false;
	}
}


function retireEmp(){
	$(".retire").modal();
}
function finalRetireCheck(check){
	var today = new Date();  
	var retireDe = document.getElementById('retireDe')
	var retireDeValue = retireDe.value;
	var retireDate = new Date(retireDeValue);
	var year = today.getFullYear(); // ??????
	var month = today.getMonth() + 1;  // ???
	var date = today.getDate();  // ??????
	var day = today.getDay();  // ??????
	
	if(check && today>=retireDate){
		console.log("today : " + today + "/ retireDe : " + retireDate);
		document.getElementById('emp').submit();
	}else if(today<retireDate){
		$(".retireDate").modal();
		retireDe.value = null;
		return false;
	}
};	


function finalCheck(check){
	if(check){
		document.getElementById('emp').submit();
	}
};

$(function(){
	 $("#empList").on("click", function(){
		 location.href = "/hr/empList?currentPage=1";
	 });
});       
      
    </script>
</body>
<!-- END: Body-->

</html>