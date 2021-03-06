<%@page import="vo.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="vo.OrderBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if(session.getAttribute("uID") == null){
	response.sendRedirect("index.jsp");
}
    ArrayList<OrderBean> orderList = (ArrayList<OrderBean>) request.getAttribute("orderList");
    List<MemberBean> memberList = (List<MemberBean>) request.getAttribute("memberList");
	OrderBean orderDetail = (OrderBean)request.getAttribute("orderDetail");
 %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - order_comp_list</title>

<!-- Custom fonts for this template -->
<link href="admin/vendor/fontawesome-free/css/all.min.css?ver=1"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="admin/css/sb-admin-2.min.css?ver=1" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="admin/vendor/datatables/dataTables.bootstrap4.min.css?ver=1"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="../adminInc/adminMenu.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

        <!-- Topbar -->
<!-- top 로그인 관리 부분---------------------------------------------------------------------------------------------------------------------- -->
				<jsp:include page="../adminInc/topbar.jsp" />
<!-- ---------------------------------------------------------------------------------------------------------------------------------------- -->
        <!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

<%-- 				<jsp:include page="../adminInc/topEtc.jsp" /> --%>
					<!-- Page Heading -->

					<!-- DataTales Example -->
					<!-- Approach -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">목록</h6>
<!-- 							<br> -->
<!-- 							<input type="button" class="btn btn-large btn-success" value="세일즈 파일 다운" onclick="location.href='Sales.adm'"/>&nbsp;&nbsp; -->
						</div> 
						<div class="card-body">
							<!-- DataTales Example -->
<!-- 							<div class="card shadow mb-4"> -->
								<!--             <div class="card-header py-3"> -->
								<!--               <h6 class="m-0 font-weight-bold text-primary">거래완료 진행리스트</h6> -->
								<!--               	<a href="MemberModifyForm.adm"><input type="button" value="멤버수정"></a> -->
								<!-- 				<a href="MemberDeletePro.adm"><input type="button" value="멤버삭제"></a> -->
								<!--             </div> -->
								<div class="card-body">
<!-- 									<div class="table-responsive"> -->
										<form action="" method="post" id="searchForm">
<%-- 										<input type="hidden" name="orderStatus" value="<%=orderDetail.getOrderStatus() %>"> --%>
										<table class="table table-bordered" id="dataTable"
											width="100%" cellspacing="0">
											<thead>
												<tr>
													<th>주문일</th> 
													<th>주문번호</th>
													<th>주문자명</th>
													<th>결제방법</th>
													<th>주문금액</th>
													<th>주문상태</th>
												</tr>
											</thead>
<%-- 										<%if(orderDetail.getOrderStatus().equals("주문완료")) {%> --%>
											<%for(int i = 0; i < orderList.size(); i++){ %>
											<tbody>
												<tr onclick="location.href='OrderCompDetail.adm?orderNum=<%=orderList.get(i).getOrderNum()%>&orderStatus=<%=orderList.get(i).getOrderStatus()%>'">
													<td><%=orderList.get(i).getOrderTime() %></td>
													<td><%=orderList.get(i).getOrderNum() %></td>
													<td><%=orderList.get(i).getOrder_id() %></td>
													<td><%=orderList.get(i).getPaymentType() %></td>
													<td><%=orderList.get(i).getBookPrice() %></td>
													<td><%=orderList.get(i).getOrderStatus() %></td>
												</tr>
												<%} %>
<%-- 											<%} %> --%>
												
											</tbody>
										</table>
<!-- 									</div> -->
									</form>
								</div>
<!-- 							</div> -->

							</div>
			              </div>
						<!--             </div> -->
						<!--           </div> -->

					</div>
					<!-- /.container-fluid -->
<%-- 				<jsp:include page="../adminInc/etc.jsp" /> --%>

				</div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<jsp:include page="../adminInc/adminBottom.jsp" />

				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		

		<!-- Bootstrap core JavaScript-->
		<script src="admin/vendor/jquery/jquery.min.js?ver=1"></script>
		<script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js?ver=1"></script>

		<!-- Core plugin JavaScript-->
		<script src="admin/vendor/jquery-easing/jquery.easing.min.js?ver=1"></script>

		<!-- Custom scripts for all pages-->
		<script src="admin/js/sb-admin-2.min.js?ver=1"></script>

		<!-- Page level plugins -->
		<script src="admin/vendor/datatables/jquery.dataTables.min.js?ver=1"></script>
		<script
			src="admin/vendor/datatables/dataTables.bootstrap4.min.js?ver=1"></script>

		<!-- Page level custom scripts -->
		<script src="admin/js/demo/datatables-demo.js?ver=1"></script>
</body>
</html>