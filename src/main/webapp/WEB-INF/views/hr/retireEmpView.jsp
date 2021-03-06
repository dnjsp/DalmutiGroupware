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
		           <h2 class="content-header-title float-left mb-0">????????? ??????????????????</h2><i style="height: 2rem; width: 3rem;" data-feather='slash'></i>
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
                                    <div style="float:right;">
                                        <form:label path="retireDe">????????????</form:label>
                                    	<form:input class="form-control" type="text" path="retireDe" readonly="true" style="width:130px;background-color:white;"/>
                                    </div>
                                    <div class="media mb-2">
                                        <img src="/resources/images/emp/${emp.photoFlpth}" alt="users avatar" id="userImg" class="user-avatar users-avatar-shadow rounded mr-2 my-25 cursor-pointer" height="90" width="90" />
                                        <div class="media-body mt-50">
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
                                                    <form:input path="empNm" type="text" class="form-control" placeholder="??????" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="brthdy">????????????</form:label>
                                                    <form:input path="brthdy" type="text" class="form-control" placeholder="YYYY-MM-DD" readonly="true"/>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <form:label path="email">???????????????</form:label>
                                                    <form:input path="email" type="email" class="form-control" placeholder="???????????????" name="email" id="email" readonly="true"/>
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
                                                    <form:input path="encpnDe" type="text" class="form-control" placeholder="YYYY-MM-DD" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="deptVO.deptCode">????????????</form:label>
                                                    <form:input path="deptVO.deptNm" class="form-control" id="deptSelect" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="clsfCode">??????</form:label>
                                                    <form:input path="clsf" class="form-control" id="clsfSelect" readonly="true"/>
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
		                                            <form:input path="zip" type="text" class="form-control" placeholder="????????????" name="zip" id="zipInput" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="adres1">????????????</form:label>
                                                    <form:input path="adres1" type="text" class="form-control" placeholder="????????????" name="adres1" id="adres1"  readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="col-lg-4 col-md-6">
                                                <div class="form-group">
                                                    <form:label path="adres2">????????????</form:label>
                                                    <form:input path="adres2" type="text" class="form-control" placeholder="????????????"  readonly="true" />
                                                </div>
                                            </div>
                                            <div class="col-12 d-flex flex-sm-row flex-column mt-2" style="display: flex; justify-content: center;">
                                                <button type="button" id="empList" class="create-new btn btn-primary">??????</button>
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
								<div class="imgHtml"></div>
				<!-- Modal start -->
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
        });
        

$(function(){
	 $("#empList").on("click", function(){
		 location.href = "/hr/empList?currentPage=1";
	 });
}); 


	
      
      
    </script>
</body>
<!-- END: Body-->

</html>