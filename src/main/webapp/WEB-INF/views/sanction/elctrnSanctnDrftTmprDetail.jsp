<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
<meta name="description"
	content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
<meta name="keywords"
	content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
<meta name="author" content="PIXINVENT">
<title></title>
<link rel="apple-touch-icon" href="/resources/images/ico/apple-icon-120.png">

<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- BEGIN: Vendor CSS-->
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/vendors.min.css">
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/forms/wizard/bs-stepper.min.css">
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/forms/select/select2.min.css">
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/editors/quill/katex.min.css">
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/editors/quill/monokai-sublime.min.css">
<link rel="stylesheet" type="text/css" href="/resources/vendors/css/editors/quill/quill.snow.css">
<!-- END: Vendor CSS-->

<!-- BEGIN: Theme CSS-->
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/bootstrap-extended.css">
<link rel="stylesheet" type="text/css" href="/resources/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/components.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/themes/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/themes/bordered-layout.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/themes/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="/resources/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/plugins/forms/form-wizard.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/plugins/forms/form-validation.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/pages/modal-create-app.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/plugins/extensions/ext-component-tree.css">
<link rel="stylesheet" type="text/css" href="/resources/css/tab.css">
<link rel="stylesheet" type="text/css" href="/resources/css/plugins/forms/form-quill-editor.css">
<link rel="stylesheet" type="text/css" href="/resources/css/pages/page-blog.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/plugins/forms/form-file-uploader.min.css">
<!-- END: Page CSS-->

<style type="text/css">
.vertical-layout {
	min-width: 993px;
	overflow-x: hidden;
}

.btn-outline-primary {
	padding: 0.786rem;
	width: 66px;
	height: 45px;
}

.btn-group {
	width: 928px;
}

.form-label {
	width: 49px;
	height: 20px;
}

.card-body {
	padding-top: 7px;
}

.card-body .col-xl-4 {
	padding-left: 20px;
}

.mb-1 {
	padding-left: 10px;
}

.d-file {
	padding-top: 10px;
}

.d-list {
	
}

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap')
	;

.mb-50 {
	margin-top: 0.5rem;
}

.time {
	color: #7367F0;
}

.form-control {
	/* 		display: inline; */
	/* 		width: 75%; */
	width: 227px;
}

.d-input {
	padding: 2px;
}
</style>
<script type="text/javascript">
	<%int empCount = 1;%>
	var empCount = <%=empCount%>;
</script>
</head>
<body
	class="vertical-layout vertical-menu-modern  navbar-floating footer-static  "
	data-open="click" data-menu="vertical-menu-modern" data-col="">
	<!-- BEGIN: Content-->
	<div class="content-overlay"></div>
	<div class="content-wrapper container-xxl p-0">
		<div class="content-header row">
			<div class="content-header-left col-md-9 col-12 mb-2">
				<div class="row breadcrumbs-top">
					<div class="content-body">
						<div class="container">
							<!-- Basic Tables start -->
							<div class="row" id="" style="background-color: white;">
								<div class="col-12" style="margin-top: 10px;">
									<div class="col-lg-6 col-12" style="padding-bottom: 15px;">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button"
												class="btn btn-outline-primary waves-effect" id="printDoc">??????</button>
											<!--  <button type="button" class="btn btn-outline-primary waves-effect" id="setLine">?????? ??????</button> -->
											<button type="button" class="btn btn-outline-primary waves-effect" data-toggle="modal" data-target="#addsanctionLine">????????????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="setCc" style="color: grey;" disabled>??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="retrieveDoc" style="color: grey;" disabled>??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="reUploadDoc" style="color: grey;" disabled>?????????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="signDoc" style="color: grey;" disabled>??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="returnDoc" style="color: grey;" disabled>??????</button>
											<!-- <button type="button" class="btn btn-outline-primary waves-effect" id="uploadFile">????????????</button> -->
<!-- 											<button type="button" class="btn btn-outline-primary waves-effect" id="setDisplay" style="color: grey;" disabled>??????</button> -->
											<button type="button" class="btn btn-outline-primary waves-effect" id="uploadDoc">??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="saveDoc">??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="deleteTmprDoc">??????</button>
											<button type="button" class="btn btn-outline-primary waves-effect" id="exitDoc">??????</button>
										</div>
									</div>
									<h1 class="font-large-2 fw-bolder mt-2 mb-0"
										style="text-align: center; padding-bottom: 25px; letter-spacing: 30px;">${formNm}</h1>

									<div class="modal fade text-left" id="addsanctionLine"
										tabindex="-1" role="dialog"
										aria-labelledby="sanctionLineModal" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document"
											style="display: table; padding: 0px; margin: 0px;">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="sanctionLineModal">???????????? ??????</h4>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<!-- ???????????? ??????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

												<div class="modal-body" style="width: 880px; height: 730px;">
													<!-- BEGIN: Content-->
													<div class="app-content content"
														style="padding: 0px; margin: 0px;">
														<div class="container" style="padding: 0px; margin: 0px;">
															<!-- Basic Tables start -->
															<div class="row">
																<div class="col-12" style="margin-top: 10px;">
																	<ul class="tabs">
																		<li class="tab-link current" data-tab="tab-1">?????????</li>
																		<li class="tab-link" data-tab="tab-2">??????</li>
																	</ul>
																	<!-- Tree section -->
																	<section class="basic-custom-icons-tree">
																		<div class="row">
																			<!-- Basic Tree -->
																			<div class="col-md-4">
																				<!-- tab-1 start -->
																				<div id="tab-1" class="tab-content current">
																					<div class="card">
																						<div class="card-header">
																							<h4 class="card-title">SOFTLAB</h4>
																						</div>
																						<div class="card-body"
																							style="height: 500px; overflow: scroll;">
																							<div id="jstree-basic">
																								<ul>
																									<c:forEach items="${deptList}" var="deptList">
																										<c:if test="${deptList.lvl<2}">

																											<li data-jstree='{"icon" : "far fa-folder"}'>
																												<span>${deptList.deptNm}</span>
																										</c:if>

																										<c:if test="${deptList.lvl>1}">
																											<ul data-jstree='{"icon" : "far fa-folder"}'>
																												<li
																													data-jstree='{"icon" : "fab fa-css3-alt"}'><span>${deptList.deptNm}</span>
																										</c:if>
																										<ul id="deptLi">
																											<c:forEach items="${deptEmpList}"
																												var="deptEmpList">
																												<c:if
																													test="${deptList.deptCode eq deptEmpList.deptCode}">
																													<li
																														data-jstree='{"icon" : "far fa-file-image"}'
																														onclick="addLine(this);">[${deptList.deptNm}&nbsp;
																														/ &nbsp;${deptEmpList.clsfCode}]
																														&nbsp;${deptEmpList.empNm} <input
																														type="hidden" class="empNo"
																														value="${deptEmpList.empNo}"> <input
																														type="hidden" class="clsfCode"
																														value="${deptEmpList.clsfCode}"> <input
																														type="hidden" class="empNm"
																														value="${deptEmpList.empNm}"> <input
																														type="hidden" class="deptNm"
																														value="${deptEmpList.deptNm}">
																													</li>
																												</c:if>
																											</c:forEach>
																											<c:if test="${deptList.lvl>1}">
																										</ul>
																										</c:if>
																								</ul>
																								</c:forEach>
																								</ul>
																								</li>
																								</ul>
																							</div>
																						</div>
																					</div>
																				</div>
																				<!-- tab-2 start -->
																				<div id="tab-2" class="tab-content current">
																					<div class="card">
																						<div class="card-header">
																							<h4 class="card-title">SOFTLAB</h4>
																						</div>
																						<div class="card-body"
																							style="height: 500px; overflow: scroll;">
																							<form id="sanctionSearch">
																								<span> <input type="text" id="keyword"
																									name="keyword" class="form-control"
																									style="width: 150px; display: inline;"
																									value="${keyword}"> <input
																									type="submit" id="searchBtn" name="searchBtn"
																									class="btn btn-primary mr-1 waves-effect waves-float waves-light"
																									value="??????"> <br>
																								<br>
																								</span>
																								<div id="searchResultMenu"></div>
																							</form>
																						</div>
																					</div>
																				</div>
																			</div>

																			<div style="margin-left: 20px; margin-right: 20px;">
																				<br>
																				<br>
																				<br>
																				<br>
																			</div>
																			<div id="rightMenu" class="col-sm-4 col-md-3"
																				style="height: 500px;">
																				<div class="card"
																					style="width: 450px; height: 550px; overflow: scroll;">
																					<div class="card-header">
																						<h4 class="card-title">?????????</h4>
																					</div>
																					<div class="card-body">
																						<table class="table" id="alt">
																							<thead>

																								<tr style="text-align: center;">
																									<th>??????</th>
																									<th>??????</th>
																									<th>??????</th>
																									<th>??????</th>
																								</tr>
																							</thead>
																							<tbody id="appLineTable"
																								style="text-align: center;">
																								<tr class="apptr">
																									<td><%=empCount%></td>
																									<td>${map.DEPT_NM}</td>
																									<td class="c-clsf">??????</td>
																									<td data-class="d-nm">${map.EMP_NM}</td>
																								</tr>
																							</tbody>
																						</table>
																					</div>
																				</div>
																				<div style="margin: auto; width: 450px;">
																					<button type="button"
																						class="btn btn-primary waves-effect waves-float waves-light"
																						data-dismiss="modal"
																						style="text-align: center; margin: auto; float: right; padding: 13px;"
																						id="appListConfirm">??????</button>
																					<button
																						class="btn btn-outline-primary waves-effect"
																						type="button" id="deleteBtn"
																						style="margin-right: 10px; float: right; padding: 13px; width: 120px;">?????????
																						??????</button>
																				</div>
																				<br style="clear: both;">
																			</div>
																		</div>
																	</section>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>


									<div class="card-body">
										<form id="uploadForm" action="/sanction/sanctnAdd"
											method="post" enctype="multipart/form-data">
											<input type="hidden" name="formNm" value="${formNm}">
											<input type="hidden" id="elctrnSanctnSn" name="elctrnSanctnSn" value="${vo.elctrnSanctnSn}">
											<div class="row"
												style="display: flex; flex-direction: row-reverse; padding-right: 15px; padding-bottom: 25px;">
												<table border="1"
													style="padding-top: 10px; text-align: center; float: right;">
													<tr><td rowspan="4" style="width: 30px;">???<br/>???</td></tr>
													<tr>
														<td style="width: 70px;">??????</td>
														<td style="width: 70px;" id="clsf1"></td>
														<td style="width: 70px;" id="clsf2"></td>
														<td style="width: 70px;" id="clsf3"></td>
													</tr>
													<tr>
														<td style="height: 50px;"></td>
														<td id="next-nm-1"><input type="hidden" name="nm1"
															id="nm1" 
															style="border: 0 solid black; width: 70px; text-align: center; background: transparent;"
															readonly></td>
														<td id="next-nm-2"><input type="hidden" name="nm2"
															id="nm2" 
															style="border: 0 solid black; width: 70px; text-align: center; background: transparent;"
															readonly></td>
														<td id="next-nm-3"><input type="hidden" name="nm3"
															id="nm3" 
															style="border: 0 solid black; width: 70px; text-align: center; background: transparent;"
															readonly></td>
													</tr>
												</table>
											</div>

											<div class="row" style="padding-left: 14px;">
												<div class="d-input">
													<label class="form-label" for="basicInput1">????????????</label> <input
														type="text" class="form-control" id="basicInput1"
														name="drftFormSn" value="????????????" readonly>
												</div>
												<div class="d-input">
													<label class="form-label" for="basicInput2">????????????</label> <input
														type="text" class="form-control" id="basicInput2"
														value="${vo.drftDe}" readonly>
												</div>
												<div class="d-input">
													<label class="form-label" for="basicInput3">?????????</label> <input
														type="text" class="form-control" id="basicInput3"
														name="empNm" value="${map.EMP_NM}" readonly>
												</div>
												<div class="d-input">
													<label class="form-label" for="basicInput4">????????????</label> <input
														type="text" class="form-control" id="basicInput4"
														name="deptNm" value="${map.DEPT_NM}" readonly>
												</div>
												<div style="padding-bottom: 10px;">
                                                    <label class="form-label" for="basicInput5"
                                                        style="width: 800px;">????????????</label> <input type="text"
                                                        class="form-control" id="basicInput5" name="docSj"
                                                        style="width: 922px;" placeholder="????????? ??????????????? ????????????."
                                                        value="${vo.docSj}">
                                                </div>
											</div>
                                            <div>
                                                <label class="form-label">????????????</label>
                                                <div id="blog-editor-wrapper">
                                                    <div id="blog-editor-container">
                                                        <textarea id="editor" rows="17" cols="134" name="docCn">${vo.docCn}</textarea>
                                                    </div>
                                                </div>
                                            </div>

											<!-- ??????????????? ?????? -->
											<div class="mb-1 d-file" style="padding-left: 0px;">
												<label class="form-label" for="basicInput1"
													style="display: block;">????????????</label> <input
													class="form-control" type="file" id="file-input"
													name="uploadFiles" multiple style="width: 922px;">
											</div>

											<div class="card">
												<div class="card-body d-list" style="border: 1px solid lightgrey; border-radius: 5px; padding: 7px 21px;">
													<p><i data-feather='paperclip'></i>&nbsp;????????? ?????? ??????</p>
													<div id="preview" style="height: 100px; overflow-y: scroll;"></div>
												</div>
											</div>
											<!-- ??????????????? ??? -->
										</form>
										<div class="modal fade text-left modal-primary saveSuccess" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">??????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????????????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary deleteModal" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">??????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????????????????????????</div>
										            <div class="modal-footer" style="justify-content: center; padding: 0rem 1.4rem;">
										                <button type="button" class="btn btn-primary" data-dismiss="modal" id="deleteConfirm">??????</button>
										                <button type="button" class="btn btn-primary" data-dismiss="modal" id="deleteCancel">??????</button>
										            </div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary writeDocSj" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">??????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????? ????????? ???????????? ????????? ????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary writeDocCn" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">??????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????? ????????? ???????????? ????????? ????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary writeLine" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">????????????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">??????????????? ???????????? ????????? ????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary maxLine" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">????????????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">???????????? ?????? 4????????? ????????? ??? ????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary alreadyExist" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">????????????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????? ???????????? ????????? ???????????????.</div>
										        </div>
										    </div>
										</div>
										<div class="modal fade text-left modal-primary uploadModal" id="primary" tabindex="-1" role="dialog"
										    aria-labelledby="myModalLabel140" aria-hidden="true">
										    <div class="modal-dialog modal-dialog-centered" role="document">
										        <div class="modal-content">
										            <div class="modal-header" style="justify-content: center;">
										                <h5 class="modal-title" id="myModalLabel140" style="text-align: center; center; font-size: 13px;">??????</h5>
										                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
										                    <span aria-hidden="true">&times;</span>
										                </button>
										            </div>
										            <div class="modal-body" style="text-align: center; font-size: 15px;">?????????????????????????</div>
										            <div class="modal-footer" style="justify-content: center; padding: 0rem 1.4rem;">
										                <button type="button" class="btn btn-primary" data-dismiss="modal" id="uploadConfirm">??????</button>
										                <button type="button" class="btn btn-primary" data-dismiss="modal" id="uploadCancel">??????</button>
										            </div>
										        </div>
										    </div>
										</div>
					                    <div class="modal fade text-left modal-primary closeModal" id="primary" tabindex="-1" role="dialog"
					                        aria-labelledby="myModalLabel140" aria-hidden="true">
					                        <div class="modal-dialog modal-dialog-centered" role="document">
					                            <div class="modal-content">
					                                <div class="modal-header" style="justify-content: center;">
					                                    <h5 class="modal-title" id="myModalLabel140"
					                                        style="text-align: center; center; font-size: 13px;">??????</h5>
					                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					                                        <span aria-hidden="true">&times;</span>
					                                    </button>
					                                </div>
					                                <div class="modal-body" style="text-align: center; font-size: 15px;">?????? ??????????????????????</div>
					                                <div class="modal-footer" style="justify-content: center; padding: 0rem 1.4rem;">
					                                    <button type="button" class="btn btn-primary" data-dismiss="modal"
					                                        id="closeConfirm">??????</button>
					                                    <button type="button" class="btn btn-primary" data-dismiss="modal"
					                                        id="closeCancel">??????</button>
					                                </div>
					                            </div>
					                        </div>
					                    </div>									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ???????????? ?????? ????????????~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
	<!-- BEGIN: Vendor JS-->
	<script src="/resources/vendors/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script src="/resources/vendors/js/forms/wizard/bs-stepper.min.js"></script>
	<script src="/resources/vendors/js/forms/select/select2.full.min.js"></script>
	<script src="/resources/vendors/js/forms/cleave/cleave.min.js"></script>
	<script src="/resources/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
	<script src="/resources/vendors/js/forms/validation/jquery.validate.min.js"></script>
	<script src="/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="/resources/vendors/js/file-uploaders/dropzone.min.js"></script>
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script src="/resources/js/core/app-menu.js"></script>
	<script src="/resources/js/core/app.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<script src="/resources/js/scripts/pages/modal-add-new-address.js"></script>
	<script src="/resources/js/scripts/pages/page-blog-edit.js"></script>
	<script src="/resources/js/scripts/forms/form-file-uploader.min.js"></script>
	<!-- END: Page JS-->
	
	<script>
	$(window).on('load', function() {
		if (feather) {
			feather.replace({
				width : 14,
				height : 14
			});
		}
	})
</script>

	<script type="text/javascript">
	empCount++;
	var empList = new Array();
	var appEmpList = new Array();
	
	// ???????????? ??????
	$(document).ready(function(){
		$("#tab-2").hide();
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');
			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');
			
			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
			if(tab_id=='tab-2'){
				$("#tab-2").show();
			}
		});
	});
	
	$(function() {
		
		// ??????
		$('#searchBtn').on('click', function() {		
			event.preventDefault();      // built-in event??????
			//event.stopPropergation(); // ????????? ?????? ??????
			 var formData= $("#sanctionSearch").serialize();
			
			$.ajax({
				type : 'get',
				url : "/hr/searchEmpAjax",
				data : formData,
				dataType : 'json',
				success : function(empData) {
					var keyword = $("#keyword").val();
					var v_tblStr ="<div id='jstree-basic'>";
					v_tblStr +="<ul>";
					
					for(var i=0; i<empData.length; i++){
						v_tblStr +="<a><li class='searchResult' onclick='addLine(this);'>[" + empData[i].deptNm + "&nbsp;&nbsp; /";
						v_tblStr +="&nbsp;&nbsp;" + empData[i].clsfCode + "]";
						v_tblStr +="&nbsp;&nbsp;" + empData[i].empNm;
						v_tblStr += "<input type='hidden' class='empNo' value=" + empData[i].empNo + ">";
						v_tblStr += "<input type='hidden' class='clsfCode' value=" + empData[i].clsfCode +">";
						v_tblStr += "<input type='hidden' class='empNm' value=" + empData[i].empNm + ">";
						v_tblStr += "<input type='hidden' class='deptNm' value=" + empData[i].deptNm + "></li></a>";
					}						
					v_tblStr +="</ul>";
					v_tblStr +="</div>";
					$("#searchResultMenu").html(v_tblStr);
				},
				error : function(e) {
					console.log("??????", e);
				}
			});
		});
		
		//????????? ??????
		 $('#deleteBtn').on('click', function() {
		 //???????????? ????????? ????????????
		 var table = document.getElementById('alt');
		 
		 //tr????????????
		 if(empCount>2){
		    table.deleteRow(table.rows.length - 1);
		 	//?????????????????? ????????? -1
		 	empCount--;
		 }
		  });
	
	});
	
	function addLine(geta){
		var lastChildren = geta.lastChild;	//i, a ?????? a??? ??????
		var children = lastChildren.childNodes;	//a??? ??????????????? ??????
		var outputString = "";
		
		// ??????????????? ??????????????? ??? ?????? ?????? ?????? ??????
		if(children.length == 0) {
			var v_infos=geta.children;
			var empNo = v_infos[0].value;
			var clsfCode = v_infos[1].value;
			var empNm = v_infos[2].value;
			var deptNm = v_infos[3].value;
		}
		
		for(var i=0; i<children.length; i++){
			    outputString += "????????????: " + children[i].nodeName + "<br />";
		    
		    if(i==2){
		    	var empNo = children[i].value;
		    }else if(i==5){
		    	var deptNm = children[i].value;
		    }else if(i==3){
		    	var clsfCode = children[i].value;
		    }else if(i==4){
		    	var empNm = children[i].value;
		    }
		}
		
		//???????????? ??????
		if(empCount < 5){
			var datas = $("td[data-empNo]");
			var flag = true;	//?????? ??????
			$.each(datas,function(index, item){
				if(empNo == $(item).prop("id")){
// 					console.log(empNo + " : " + $(item).prop("id") + "=>?????????");
					$('.alreadyExist').modal()
					flag = false;	//?????? ??????
				};
			});
            //????????? ????????? ????????? ??????
            if(flag==true){
               $("#appLineTable").append(
                     "<tr class='apptr'><td>"+empCount+"</td><td>"+deptNm+"</td><td class='clsfNm'>"+clsfCode+"</td><td id='"+empNo+"' data-empNo='"+empNo+"' class='c-name'>"+empNm+"</td></tr>"   
               );
               empCount++;
			}
		}
	}
		
	const setLine = document.querySelector('#appListConfirm')
	var clsf = document.getElementsByClassName('clsfNm')
	var nm = document.getElementsByClassName('c-name')
	
	//??????
	var clsf1 = document.querySelector('#clsf1');
	var clsf2 = document.querySelector('#clsf2');
	var clsf3 = document.querySelector('#clsf3');
	//?????????
	var nm1 = document.querySelector('#nm1');
	var nm2 = document.querySelector('#nm2');
	var nm3 = document.querySelector('#nm3');
	
	//???????????? ?????? ??? ????????? ???????????? ?????? ??? ??????
	setLine.addEventListener('click', function() {
		//???????????? ??????????????? ????????? ???????????? ???????????? ????????? ?????? ???????????? ??????
		$(".clsfNm").each(function(index,item){
//         	console.log("clsfNm(" + index + ") : " + $(this).text());
        	if(index==0){
        		$("#clsf1").text($(this).text());
        	}else if(index==1){
        		$("#clsf2").text($(this).text());
        	}else if(index==2){
        		$("#clsf3").text($(this).text());
        	}
        });
        $(".c-name").each(function(index,item){
//         	console.log("c-name(" + index + ") : " + $(this).prop("id"));
        	if(index==0){
        		$("#nm1").val($(this).prop("id"));
        	}else if(index==1){
        		$("#nm2").val($(this).prop("id"));
        	}else if(index==2){
        		$("#nm3").val($(this).prop("id"));
        	}
        });
	});
	
	const printDoc = document.querySelector('#printDoc')
	const setCc = document.querySelector('#setCc')
	const retrieveDoc = document.querySelector('#retrieveDoc')
	const reUploadDoc = document.querySelector('#reUploadDoc')
	const signDoc = document.querySelector('#signDoc')
	const returnDoc = document.querySelector('#returnDoc')
	const uploadFile = document.querySelector('#uploadFile')
	const setDisplay = document.querySelector('#setDisplay')
	const uploadDoc = document.querySelector('#uploadDoc')
	const saveDoc = document.querySelector('#saveDoc')
	const deleteTmprDoc = document.querySelector('#deleteTmprDoc')
	const exitDoc = document.querySelector('#exitDoc')
	const docSj = document.querySelector('#basicInput5')
	const docCn = document.querySelector('#docCn')
	const elctrnSanctnSn = document.querySelector('#elctrnSanctnSn')
	
	// ??????
	printDoc.addEventListener('click', function() {
		window.print()
	})

	// ??????
	setCc.addEventListener('click', function() {
		alert('??????')
	})

	// ????????????
	const fileInput = document.querySelector('#file-input')
	const preview = document.querySelector('#preview')
	
	fileInput.addEventListener('click', function() {
		preview.innerHTML = ''
	})
	
	const handler = {
		init() {
			fileInput.addEventListener('change', () => {
				const files = Array.from(fileInput.files)
				files.forEach(file => {
					preview.innerHTML += "<p id='" + file.lastModified + "'>" 
										+ file.name + "<button type='button' data-index='" 
										+ file.lastModified 
										+ "' class='file-remove btn btn-sm btn-icon delete-record'>"
										+ "<svg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' class='feather feather-trash font-medium-2 text-body'><polyline points='3 6 5 6 21 6'></polyline><path d='M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2'></path></svg>"
										+ "</button></p>"
				})
			})
		},

		removeFile: () => {
	           document.addEventListener('click', (e) => {
// 	            if(e.target.className !== 'file-remove') return
	            if(e.target.classList.contains('file-remove') === false) return
	            const removeTargetId = e.target.dataset.index
	            const removeTarget = document.getElementById(removeTargetId)
	            const files = document.querySelector('#file-input').files
	            const dataTransfer = new DataTransfer()
					
	            Array.from(files)
	            .filter(file => file.lastModified != removeTargetId)
	            .forEach(file => {
		            dataTransfer.items.add(file)
		         })

	        	document.querySelector('#file-input').files = dataTransfer.files

	        	removeTarget.remove()
	   		})
	   	}
	}

	handler.init()
	handler.removeFile()

    // ??????
    uploadDoc.addEventListener('click', function () {
        if (docSj.value == '') {
            $('.writeDocSj').modal()
            docSj.focus()
            return
        }
        oEditors.getById["editor"].exec("UPDATE_CONTENTS_FIELD", [])
        let content = $("#editor").val()
        if (content == '<p>&nbsp;</p>') {
            $('.writeDocCn').modal()
            oEditors.getById["editor"].exec("FOCUS")
            return
        }
        if (nm1.value == '') {
            $('.writeLine').modal()
            return
        }
        $('.uploadModal').modal()
        const confirm = document.querySelector('#uploadConfirm')
        const uploadCancel = document.querySelector('#uploadCancel')

        confirm.addEventListener('click', function () {
            uploadForm.submit()
        })
    })

	// ??????
	saveDoc.addEventListener('click', function(f) {
		if (docSj.value == '') {
			$('.writeDocSj').modal()
			docSj.focus()
			return
		}
		oEditors.getById["editor"].exec("UPDATE_CONTENTS_FIELD", [])
		let content = $("#editor").val()
		if(content == '<p>&nbsp;</p>') { 
			$('.writeDocCn').modal()
			oEditors.getById["editor"].exec("FOCUS")
			return
		}
		$.ajax({
			url : '/sanction/tmprAtModify',
			type : 'POST',
			data : {
				'docSj' : docSj.value,
				'docCn' : content,
				'elctrnSanctnSn' : elctrnSanctnSn.value
			},
			success : function(res) {
				if (res) {
					$(".saveSuccess").modal()
					opener.parent.location.reload()
				}
			}
		})
	})

	// ?????? ??????
	deleteTmprDoc.addEventListener('click', function() {
		$('.deleteModal').modal()
		const confirm = document.querySelector('#deleteConfirm')
		const deleteCancel = document.querySelector('#deleteCancel')
		
		confirm.addEventListener('click', function() {
			$.ajax({
				url : '/sanction/tmprDelete?elctrnSanctnSn=' + elctrnSanctnSn.value,
				type : 'POST',
				data : {
					'elctrnSanctnSn' : elctrnSanctnSn.value
				},
				success : function(res) {
					if (res) {
						window.close()
						opener.parent.location.reload()
					}
				}
			})
		})
	})

	// ?????? (??????)
	exitDoc.addEventListener('click', function() {
		$('.closeModal').modal()
		const confirm = document.querySelector('#closeConfirm')
		const closeCancel = document.querySelector('#closeCancel')
		
		confirm.addEventListener('click', function() {
			window.close()
		})
	})
	
    // ????????? ?????????
    var oEditors = []

    $(function () {
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "editor",
            //SmartEditor2Skin.html ????????? ???????????? ??????
            sSkinURI: "/resources/smarteditor/SmartEditor2Skin.html",
            htParams: {
                // ?????? ?????? ?????? (true:??????/ false:???????????? ??????)
                bUseToolbar: true,
                // ????????? ?????? ????????? ?????? ?????? (true:??????/ false:???????????? ??????)
                bUseVerticalResizer: false,
                // ?????? ???(Editor | HTML | TEXT) ?????? ?????? (true:??????/ false:???????????? ??????)
                bUseModeChanger: false,
                fOnBeforeUnload: function () {}
            },
            fCreator: "createSEditor2"
        })
    })
</script>