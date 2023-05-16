<!-- <!doctype html> -->
<!-- <html lang="en"> -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<head>

<script src="/resources/assets/js/theme.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<!------------------------------ 결제하기시작 ---------------------------->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/assets/img/favicon.ico"
	type="image/ico">
<!--Box Icons-->
<link rel="stylesheet"
	href="/resources/assets/fonts/boxicons/css/boxicons.min.css">


<!--Bootstrap icons-->
<link href="/resources/assets/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">


<!--AOS Animations-->
<link rel="stylesheet"
	href="/resources/assets/vendor/node_modules/css/aos.css">

<!--Iconsmind Icons-->
<link rel="stylesheet"
	href="/resources/assets/fonts/iconsmind/iconsmind.css">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,400&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
<!--Prism css snippets-->
<link rel="stylesheet"
	href="/resources/assets/vendor/node_modules/css/prism-tomorrow.css">
<!-- Main CSS -->
<link href="/resources/assets/css/theme.min.css" rel="stylesheet">
<!------------------------------ 결제하기끝 ---------------------------->

<!------------------------------- 댓글시작 ----------------------------->
<!--FavIcon-->
<link rel="icon" type="image/x-icon"
	href="/resources/assets/img/favicon.ico">
<!--Google Fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Chivo:wght@100..900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0">

<!--Aos Animations-->
<link href="/resources/assets/vendor/node_modules/css/aos.css"
	rel="stylesheet">

<!--Main Style-->
<link href="/resources/assets/css/theme.min.css" rel="stylesheet">
<!------------------------------- 댓글끝 ----------------------------->

<title>템플릿디테일</title>

<style type="text/css">
/*----------------------- 결제하기 스타일 시작------------------------------*/
.header {
	background-color: #f1f1f1;
	padding: 20px;
	height: 300px;
	text-align: center;
}

#top-left {
	height: 200px;
	width: 500px;
	border: solid;
	color: black;
}

#top- {
	height: 200px;
	width: 500px;
	border: solid;
	color: black;
}
/*----------------------- 결제하기 스타일 끝--------------------------------*/

/*별점인서트스타일 */
#myform fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

#myform fieldset legend {
	text-align: right;
}

#myform input[type=radio] {
	display: none;
}

#myform label {
	font-size: 2em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

#myform label:hover {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform label:hover ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}

#myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}


/* 별점 출력 스타일 */
.yellow-star {
	color: #FFCC00;
}

.bi-star-fill{
	color: #FFCC00;

}

/* 하트 색 채우기 스타일 */
.bi-heart-fill {
	color: red;
}

.bi-heart {
	color: black;
}

/* 신고하기 아이콘 색 바꾸기 */
.bi-exclamation-diamond {
	color: red;
}

/* 멘토소개 */
#introduce{

  height:240px;
}

#mentoProfile {
  border: 1px solid #ccc;
  border-radius: 10px;
  padding: 20px;
}

@media (max-width: 768px) {
  .col-md-5 {
    width: 100%;
  }
}


/* 구매하기 버튼 컬러 */
.btn-outline-primary{
	color: #00c7ae;
}

.btn-outline-primary:hover{
	background-color: #00c7ae;
}
.btn-outline-primary:{
	background-color: #00c7ae;
}


</style>



</head>
<!-- 결제 script -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<!-- sweet alert style -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>



<body style="margin-top: 90px;">
	
	<input type="hidden" name="memId" value="${member.memId }">
	<input type="hidden" name="memNick" value="${member.memNick }">

	<div class="card mb-3 mb-lg-5">
		<div class="card-body">
			<div class="row" style="height: 270px; width: 100%" >
				<div class="col-md-7 mb-4 mb-md-0" style="margin-left: 10%; margin-top:30px; height: 215px; width: 375px; ">
					<img src="/upload/${expertProd.attatchList[0].saveNm}" width=100% height=100% alt="image" />
				</div>
				<div class="col-md-5"
					style="margin-left: 30px; margin-top: 40px; height: 215px; width: 600px;">
					<div class="mb-0 lh-lg">
						<div>
							<h1 class="mb-1" style="display: inline;">${expertProd.eprodName}</h1>
							<a href="#modalForm" data-bs-toggle="modal" aria-expanded="false"
								class="btn btn-outline-danger" id="reportBtn"
								style="display: inline; padding: 0.25rem 0.5rem; font-size: 0.8rem; float: right; margin-top: 10px;']">신고하기</a>
						</div>

						<div>
							<span><c:set var="starAvg" value="${expertProd.starAvg }" />
								<c:if test="${expertProd.countReview eq 0 }">
									<c:set var="starAvg" value="0.0" />
								</c:if> <span style="color: #FFBF00; font-size: 1.3em"> 　<span
									class="bi bi-star-fill"></span></span></span><span> 평점 (</span><span
								id="starAvg">${starAvg}</span> <span>/5)　</span>
							<button id="heart-button" class="text-body p-0 bg-transparent border-0" type="button">
								<span id="heart-icon" class="material-symbols-sharp me-2 align-middle" "> 
<!-- 								<span id="heart-icon" class="material-symbols-sharp me-2 align-middle" style="font-size: 0.9em; margin-bottom: 2px;">  -->
									<c:if test="${isLiked}">
										<i id="heart-icon-inner" class="bi bi-heart-fill"></i>
									</c:if> <c:if test="${!isLiked}">
										<i id="heart-icon-inner" class="bi bi-heart"></i>
									</c:if>
								</span>
							</button>
							찜하기 (<span id="countHeart"> ${expertProd.countHeart} </span>)
						</div>


					</div>
					<div></div>
					<div>
						<span class="display-6 mb-0">
							<span style="font-size: 0.6em; font-weight: 400;">₩</span>
							<c:set var="price" value="${expertProd.eprodPrice}" />
							<fmt:formatNumber value="${price}" pattern="#,###" var="price"/>
							<span class="price" style="font-size: 0.6em; font-weight: 400;"> ${price}</span>
						</span>


						<div class="pt-1 d-grid">
							<c:if test="${expertProd.downloadYn<1}">
								<a href="#!" class="btn btn-outline-primary btn-md" id="goBuyBtn" >구매하기</a>
							</c:if>
							<div>
							<c:if test="${expertProd.downloadYn>0}">
								<div style="display: inline-block;">
									<a href="#!" class="btn btn-outline-primary btn-md"
										id="goBuyBtn"> 구매하기 </a> 
										<a href="/coco/myPurchase" class="btn btn-outline-primary btn-md px-4 px-lg-5" 
										class="btn btn-outline-primary btn-md" id="goDownloadBtn">판매자와연락하기</a>
								</div>
							</c:if>
							</div>
						</div>
					</div>
				</div>






				<!--Modal Form-->
						<form method="post" action="/coco/solution/templateReportInsert" id="templateReport">
							<input type="hidden" name="eprodNum" value="${expertProd.eprodNum}">
							<div class="modal fade" id="modalForm" tabindex="-1" aria-labelledby="modalFormLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content border-0">
										<div class="position-relative border-0 pe-4">
											<button type="button"
												class="btn btn-gray-200 p-0 border-2 width-3x height-3x rounded-circle flex-center position-absolute end-0 top-0 mt-3 me-3 z-1"
												data-bs-dismiss="modal" aria-label="Close">
												<i class="bx bx-x fs-5"></i>
											</button>
										</div>
										<div class="modal-body py-5 border-0">
											<div class="px-3">

												<h2 class="mb-1 display-6"> <i class="bi bi-exclamation-diamond"></i> 신고하기 </h2>
												<div class="position-relative">
													<div>
<!-- 												<form method="post" action="/coco/solution/templateReportInsert" > -->
														<div class="form-group" style="margin-top: 30px;">
															<label for="memId">신고자 ID</label> <input type="hidden"
																name="memId" value="${member.memId}">
															<div class="form-control" style="user-select: none;">
																<span style="color: #009b8e;">${member.memId}</span>
															</div>
														</div>
													</div>
												</div>

												<div style="margin-top: 15px;" class="form-group">
													<label for="targetId">신고게시글 번호</label> <input type="hidden"
														name="targetId" value="${expertProd.eprodNum}">
													<div class="form-control" style="user-select: none;">
														<span style="color: #009b8e;">${expertProd.eprodNum}</span>
													</div>
												</div>
												<div style="margin-top: 15px;" class="form-group">
													<label for="reason">신고사유</label> <select
														class="form-control" name="repContent" id="reason">
														<option value="EREP01">반복적이고 불필요한 내용</option>
														<option value="EREP02">가학적이거나 혐오 내용을 담은 상품을 판매</option>
														<option value="EREP03">해당 계정의 프로필 정보에 혐오 콘텐츠가 포함</option>
														<option value="EREP04">장난성 또는 질문에 맞지 않는 무의미한 글</option>
													</select>
												</div>
												<div class="form-group">
													<div style="margin-top: 15px;" class="form-group">
														<label for="description">신고 상세 내용</label>
														<textarea class="form-control" id="description" rows="5"
															placeholder="신고 상세 내용을 입력해주세요."
															style="margin-bottom: 30px;"></textarea>
													</div>
													<div style="margin-top: 30px;">
														<span style="color: red;">WAIT!</span> 신고 접수 후에는 신고 취소가
														불가하며,
													</div>
													<div>허위 신고일 경우 신고자가 제재를 받을 수 있습니다.</div>
													<div class="d-grid" style="margin-top: 30px;">
														<!-- 														    <button class="btn btn-primary" type="submit" style="background-color: #00c7ae; border-color: transparent;">신고하기</button> -->
														<button id="goReportSubmit" class="btn btn-primary"
															type="button"
															style="background-color: #00c7ae; border-color: transparent;">신고하기</button>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 탭 네비게이션 -->
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item">
			<a class="nav-link active" id="tab1-tab" data-bs-toggle="tab" data-bs-target="#tab1" role="tab" aria-controls="tab1" aria-selected="true">　　　　　상품소개　　　</a></li>
		<li class="nav-item"><a class="nav-link" id="tab2-tab" data-bs-toggle="tab" data-bs-target="#tab2" role="tab" aria-controls="tab2" aria-selected="false">　　상품리뷰(<span id="countReview">${expertProd.countReview })</span>　　　</a></li>
		<li class="nav-item"><a class="nav-link" id="tab3-tab" data-bs-toggle="tab" data-bs-target="#tab3" role="tab" aria-controls="tab3" aria-selected="false">　　　멘토소개　　　　</a></li>
	</ul>

	<!-- 탭내용 -->
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
			<div style="display: flex; border: 1px solid lightgray; border-radius: 10px; margin: 30px;">
				<div style="flex: 1; margin-right: 10px; padding: 100px; padding-right: 10px;">
					<img src="${mentoProfileVO.memProfile}"
						style="border-radius: 50%; width: 50px; height: 50px;">${expertProd.memNick }</img>
						<br/><br/><br/>
					<div>${expertProd.eprodSummary}</div>
				</div>
				<div style="flex: 1; margin-left: 10px; display: flex; justify-content: center; padding: 100px; padding-left: 10px;">
					<c:forEach items="${expertProd.attatchList}" var="imgFile"
						varStatus="status">
						<c:if test="${status.index > 0}">
							<img src="/upload/${imgFile.saveNm}" width=100%; height=330px; alt="image" style="margin-top: 100px; margin-left: 50px;"/>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>



			<!-- 두번째 탭 상품 후기작성 시작		 -->
			<c:if test="${expertProd.downloadYn>0}">
				<div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">

					<div id="reviewCheck"
						class="border-top px-3 px-lg-5 px-xl-7 py-5 py-lg-8"
						style="width: 80%; height: 80%; margin-left: 140px;">

						<!--:Add 상품후기 form:-->
						<h4 class="mb-2">상품 후기 작성</h4>
						<div class="row">
							<div class="col-12 mb-4">
								<!-- 별점시작 -->
								<form class="mb-3" name="myform" id="myform">
									<fieldset>
										<input type="radio" name="reviewStar" value="5" id="rate1">
										<label for="rate1">★</label> <input type="radio"
											name="reviewStar" value="4" id="rate2"> <label
											for="rate2">★</label> <input type="radio" name="reviewStar"
											value="3" id="rate3"> <label for="rate3">★</label> <input
											type="radio" name="reviewStar" value="2" id="rate4">
										<label for="rate4">★</label> <input type="radio"
											name="reviewStar" value="1" id="rate5"> <label
											for="rate5">★</label>
									</fieldset>
								</form>
								<!-- 별점끝 -->

								<textarea rows="5" class="form-control" id="reviewContent"
									name="reviewContent"></textarea>
							</div>
						</div>
						<div class="d-flex justify-content-end">
							<button type="button" class="btn btn-primary" id="goInsertReview">등록하기</button>
						</div>
					</div>
			</c:if>
			<!---	후기 끝 --->


			<div style="margin-left: 250px; margin-right: 250px;">

				<div id="resultTable" style="width: 100%; height: 100%; margin-left: 10px;">


					<c:choose>
						<c:when test="${empty templateReviewVO}">
							<div>
								<div colspan="4"></div>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${templateReviewVO}" var="templateReview"
								varStatus="stat">
								<div style="display: flex; align-items: center;">
									<div id="div1" style="flex: 0 0 auto; margin-right: 10px;">
										<img src="${templateReview.memProfile}"
											style="border-radius: 50%; width: 50px; height: 50px;">
									</div>
									<div style="flex: 1;">
										<div id="div2" style="flex: 0 0 auto;">
											<c:forEach var="i" begin="1" end="5">
												<c:choose>
													<c:when test="${i <= templateReview.reviewStar}">
														<span class="yellow-star"><i
															class="bi bi-star-fill"></i></span>
													</c:when>
													<c:otherwise>
														<span><i class="bi bi-star"></i></span>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
										<div id="div3">${templateReview.reviewWriter}</div>
									</div>
								</div>
								<div id="div4" style="margin-top: 20px;">${templateReview.reviewContent}</div>
								<div id="div5" style="margin-top: 10px;">${templateReview.reviewDate.substring(0, 10)}</div>
								<hr />
							</c:forEach>

						</c:otherwise>
					</c:choose>

				</div>

			</div>
		</div>

		<!-- 두번째 탭 상품 후기작성 끝		 -->

	<!-- 세번째 탭 멘토소개 시작	 -->
	<div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab" style="margin-left: 220px;">
		<main class="main-content" id="main-content">

			<section class="position-relative">
				<div class="container position-relative">
					<div class="">

						<!--Profile info header-->
						<div class="position-relative pt-9 pb-9 pb-lg-11">
							<div class="row">

								<div class="col-lg-9">
									<h5 class="mb-4">Mento Profile </h5>

									<div class="row align-items-center" id="mentoProfile">
										<!-- 두 줄 정렬 -->

										<div class="row align-items-center">
											<!-- 두 줄 정렬 -->
											<div
												class="col-md-6 mb-3 d-flex justify-content-center align-items-center">
											<div style="text-align: center;">
											  <img src="${mentoProfileVO.memProfile}" alt="멘토사진없냐구요222" style="width: 50%; height: 50%; border-radius: 50%;">
											</div>

											</div>
											<div class="col-md-6 mb-3">
												<div class="row">
													<div class="col-md-12 mb-3">
														<label class="form-label">이름</label>
														<div class="form-control">${mentoProfileVO.memName}</div>
													</div>
													<div class="col-md-12 mb-3">
														<label class="form-label">Nickname</label>
														<div class="form-control">${mentoProfileVO.memNick}</div>
													</div>
												<div class="col-md-12 mb-3">
												  <label class="form-label">포트폴리오링크</label>
												  <label class="form-label">(클릭시 링크로 연결됩니다)</label>
												  <div class="form-control"><a href="${mentoProfileVO.assume}" target="_blank">${mentoProfileVO.assume}</a></div>
												</div>
												</div>
											</div>
											<div
												class="col-md-6 mb-3 d-flex justify-content-center align-items-center">
												<div class="col-md-12 mb-3">
													<label class="form-label">상세설명</label>
													<div class="form-control" id="introduce">${mentoProfileVO.presentation}</div>
												</div>
											</div>
											<div class="col-md-6 mb-3">
												<div class="row">
													<div class="col-md-12 mb-3">
														<label class="form-label">전공</label>
														<div class="form-control">${mentoProfileVO.expJobMajor}</div>
													</div>
													<div class="col-md-12 mb-3">
														<label class="form-label">현재직장</label>
														<div class="form-control">${mentoProfileVO.expJobCurrent}</div>
													</div>
													<div class="col-md-12 mb-3">
														<label class="form-label">직급</label>
														<div class="form-control">${mentoProfileVO.expJobLevel}</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
			</section>
		</main>
	</div>
	<!-- 세번째 탭 멘토소개 끝	 -->
<!-- 	<div class="tab-pane fade" id="tab4" role="tabpanel" -->
<!-- 		aria-labelledby="tab4-tab">Tab 4 Content</div> -->
<!-- 	</div> -->


	<!-- 결제완료 인서트 폼시작 -->
	<form action="/coco/mentoring/mentoringReceipt" method="post" id="paySuccess">
		<input type="hidden" name="eprodPrice" id="lastPrice" value="">
		<input type="hidden" name="myEprod" id="myEprod" value="">
	</form>
	<!-- 결제완료 인서트 폼 끝 -->



	<!-- scripts들은 여기에 쓰세요 -->



	<!-- 템플릿 다운 횟수에 따른 가격변화 시작-->
	<script type="text/javascript">
		function updatePrice() {
		  const selectedCount = document.querySelector('input[name="eprodGrade"]:checked').value;
		
		  const totalPrice = ${expertProd.eprodPrice} * selectedCount;
		
		  const priceElement = document.querySelector('.price');
		  
		  priceElement.innerText = totalPrice;
		  console.log(document.querySelector('.price').innerHTML);
		  
		  $("#lastPrice").val($(".price").html());
		  console.log("lastPrice값입니다:", $("#lastPrice").val());
		  
		}
		
		// 라디오 버튼에 이벤트 리스너를 등록합니다.
		const radioButtons = document.querySelectorAll('input[name="eprodGrade"]');
		radioButtons.forEach(radioButton => {
		  radioButton.addEventListener('change', updatePrice);
		});
	</script>
	<!-- 템플릿 다운 횟수에 따른 가격변화 끝-->


	<!-- 결제 아작스 시작 -->
	<script>
	$("#goBuyBtn").on("click", function() {
		var price = $('.price').html();
		var eprodGrade = $('input[name=eprodGrade]:checked').val();
		

		
	
		let data = {
			buyerId: '${member.memId}', //구매회원 아이디
			eprodNum:'${expertProd.eprodNum}', // 멘토상품번호
			eprodName : '${expertProd.eprodName}', // 상품명
			eprodSummary : `${expertProd.eprodSummary.substring(0,5)}`, //상품설명
			eprodPrice: price, //상품가격
			eprodGrade: eprodGrade //상품등급
// 			eprodCateNum='${expertProd.eprodName}'//상품카테고리
			
			
		};
		console.log("어떤 데이터가 널인데?", data)
		
		$.ajax({
			type:"post",
			url:"/coco/solution/templateDetail",
			data:JSON.stringify(data),
		    contentType:"application/json;charset=utf-8",
			dataType:"json",
			success:function(rslt){
				console.log("항상 서버에서 받은값 먼저확인:",rslt);
				$("#myEprod").val(rslt.myEprod);
				$("#lastPrice").val(rslt.eprodPrice);
				console.log("myEprod값:",$("#myEprod").val());
			},
		    error:function(request, status, error) {
		        console.log("status : ", request.status, "\n" , "message:" , request.responseText + "\n" + "error:" + error);
		    }
		})
	})
<!-- 결제 아작스 끝 -->

<!-- 결제 api 시작 -->
	$("#goBuyBtn").on("click", function() {
		IMP.init("imp33174067"); // 예: imp00000000 아임포트 키
// 		IMP.init("imp88057855"); // 예: imp00000000 아임포트 키
		IMP.request_pay({ // param     
			pg :"html5_inicis.INIpayTest",
			pay_method : "card",
			merchant_uid : "CodeCove" + new Date().getTime(), // 곂치질 않을 고유값
			name : "${expertProd.eprodName}", // 전문가 이름이나 아이디
			amount : $('.price').html(), // 가격
			buyer_email :"keepmm@naver.com",
			buyer_name :"김주은",
			buyer_tel :"01064185577"
			

		}, function(rsp) { // callback
			if (rsp.success) {
				console.log('빌링키 발급 성공', rsp)
				Swal.fire({
				  icon: 'success',
				  text: '결제가 완료되었습니다.',
				  confirmButtonText: '확인'
				}).then(function() {
				$("#paySuccess").submit();
				});
			}else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				alert(msg);
				return false;
			}

		});

	});
	</script>
	<!-- 결제 api 끝 -->


<!-- 리뷰 인서트 아작스 시작 -->
<!-- 리뷰 인서트 아작스 시작 -->
	<script type="text/javascript">
	var jueunReviewLastNum = '${templateReviewVO.size()+1}';
$("#goInsertReview").on("click", function() {

	//별점체크확인
	var reviewStar = document.querySelector('input[name="reviewStar"]:checked');
	if (reviewStar == null || reviewStar == "") {
	  Swal.fire({
	    icon: 'error',
	    title: '별점을 선택해주세요.',
//		    showCloseButton: true,
	    showConfirmButton: true,
	    timer: 1500
	  });
	  return;
	}
	
	//리뷰확인
	var reviewContent = document.getElementById("reviewContent").value;
	if (reviewContent == null || reviewContent == "") {
	  Swal.fire({
	    icon: 'error',
	    title: '리뷰 내용을 입력해주세요.',
//		    showCloseButton: true,
	    showConfirmButton: true,
	    timer: 1500
	  });
	  return;
	}


let data = {
	eprodNum:'${expertProd.eprodNum}', // 멘토상품번호
	reviewContent:$("#reviewContent").val(),
	reviewWriter:'${member.memNick}',
	reviewStar: $('input[name=reviewStar]:checked').val() // ★ 추가
};

console.log("화면실행되자마자 리뷰용data에 뭐가 들었어?", data);

$.ajax({
    type: "post",
    url: "/coco/solution/isReview",
    data: JSON.stringify(data),
    contentType: "application/json;charset=utf-8",
    dataType: "json",
    success: function(rslt) {
        console.log("여기는 리뷰값이 있어야 하거둥요:", rslt);

        if (rslt.reviewCheck > 0) {
        	    swal.fire({
        	      icon: 'warning',
        	      text: '이미 리뷰를 등록하셨습니다.',
        	      confirmButtonText: '확인'
        	    });
        	}
        if (rslt.reviewCheck == 0){
        	$.ajax({
        		type:"post",
        		url:"/coco/solution/templateReview",
        		data:JSON.stringify(data),
        	    contentType:"application/json;charset=utf-8",
        		dataType:"text",
        		success: function(rslt) {
                	console.log("rslt에는 대체 뭐가 들었길래 안 나오나요?",rslt)
                    var data = JSON.parse(rslt);
                    var reviewStar = data.reviewStar;
                    var starHtml = '';
                    for (var i = 0; i < reviewStar; i++) {
                        starHtml += '<span class="bi bi-star-fill"> </span>';
                    }
                    for (var i = reviewStar; i < 5; i++) {
                        starHtml += '<span class="bi bi-star"> </span>';
                    }
                    var newRow = '<div>' +
                    '<div style="display: flex; align-items: center;">' +
                        '<div id="div1" style="flex: 0 0 auto; margin-right: 10px;">' +
                      	  '<img src='+'"'+data.memProfile+'"'+ 'style="border-radius: 50%; width: 50px; height: 50px;">' +
                        '</div>' +
                        '<div style="flex: 1;">' +
                            '<div id="div2" style="flex: 0 0 auto;">' +
                                starHtml +
                            '</div>' +
                            '<div id="div3">' +
                                data.reviewWriter +
                            '</div>' +
                            '<div id="div4">' +
                                data.reviewContent +
                            '</div>' +
                            '<div id="div5">' +
                                data.reviewDate +
                            '</div>' +
                        '</div>' +
                    '</div>' +
                '</div>'+'<hr>' ;

    $("#resultTable").prepend(newRow);
        		},

        	    error:function(request, status, error) {
        	        alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        	    }
        	})
        }
    },


	        error: function(request, status, error) {
	            alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	        }
	    })
// 	    starAvg 변경 화면 출력
	    setTimeout(function() {
	        $.ajax({
	            type: "post",
	            url: "/coco/solution/starAvgAjax",
	            data: JSON.stringify(data),
	            contentType: "application/json;charset=utf-8",
	            dataType: "json",
	            success: function(rslt) {
	                console.log("starAvg 잘 작동됐나요오오오옹?:", rslt);
	                $("#starAvg").html(rslt.starAvg.toFixed(1));

	                
	            },
	            error: function(request, status, error) {
	                alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	            }
	        })
	    }, 150);

//		countReview	    
	    setTimeout(function() {
	        $.ajax({
	            type: "post",
	            url: "/coco/solution/countReview",
	            data: JSON.stringify(data),
	            contentType: "application/json;charset=utf-8",
	            dataType: "json",
	            success: function(rslt) {
	                console.log("countReview값 들어왔나요???:", rslt);
	                $("#countReview").html(rslt.countReview);
	            },
	            error: function(request, status, error) {
	                alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
	            }
	        })
	    }, 150);
	    
	    
	    
});




</script>
	<!-- 리뷰 인서트 아작스 끝 -->
	<!-- 리뷰 인서트 아작스 끝 -->

<!-- 	찜하기 시작-->
	<script type="text/javascript">
const heartButton = document.getElementById('heart-button');
const heartIcon = document.getElementById('heart-icon-inner');

$("#heart-button").on("click", function() {
    heartIcon.classList.toggle('bi-heart');
    heartIcon.classList.toggle('bi-heart-fill');
	
    let data = {
        eprodNum: '${expertProd.eprodNum}', // 멘토상품번호
        memId: '${member.memId}' // memId
    };
	
    console.log("data : ",data);
    
   var countHeart = ${expertProd.countHeart};
    
    if (heartIcon.classList.contains('bi-heart-fill')) {
        $.ajax({
            type: "post",
            url: "/coco/solution/templateHeartInsert",
            data: JSON.stringify(data),
            contentType: "application/json;charset=utf-8",
            dataType: "text",
            success: function(rslt) {
                console.log("채운하트등장?:", rslt);
                var countHeartPlus = countHeart+1;
                console.log("countHeartPlus???",countHeartPlus)
                $("#countHeart").html(countHeartPlus);
                
    },
            error: function(request, status, error) {
                alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        })
    } 
    else if (heartIcon.classList.contains('bi-heart')) {
        $.ajax({
            type: "post",
            url: "/coco/solution/templateHeartDelete",
            data: JSON.stringify(data),
            contentType: "application/json;charset=utf-8",
            dataType: "text",
            success: function(rslt) {
                console.log("항상 서버에서 받은값 먼저확인:", rslt);
                console.log("빈빈빈하트등장????");
                $("#countHeart").html(countHeart);
            },
            error: function(request, status, error) {
                alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            }
        })
    } 
});
</script>
	<!-- 	찜하기 끝-->

	<!-- 찜하기 확인용 ajax 시작 -->
	<script type="text/javascript">
$(function() {
    let data = {
            eprodNum: '${expertProd.eprodNum}', // 멘토상품번호
            memId: '${member.memId}' // memId
        };
    console.log("화면실행되자마자 data에 뭐가 들었어?", data);

    $.ajax({
        type: "post",
        url: "/coco/solution/isHeart",
        data: JSON.stringify(data),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function(rslt) {
            console.log("항상 서버에서 받은값 먼저확인:", rslt);
//             alert("ppp"+rslt.heartCheck);
            if(rslt.heartCheck == 1){
//             	alert("너 왔닝?")
            	$("#heart-icon-inner").removeClass("bi-heart").addClass("bi-heart-fill")
            }
            
        },
        error: function(request, status, error) {
            alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
});
</script>
	<!-- 찜하기 확인용 ajax 끝 -->
	
<!-- 리뷰 등록하자마자 별점 평균 값 바뀌기 시작-->
<script type="text/javascript">
$("#heart-button").on("click", function() {
    let data = {
            eprodNum: '${expertProd.eprodNum}', // 멘토상품번호
            memId: '${member.memId}' // memId
        };
    console.log("화면실행되자마자 data에 뭐가 들었어?", data);

    $.ajax({
        type: "post",
        url: "/coco/solution/isHeart",
        data: JSON.stringify(data),
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function(rslt) {
            console.log("항상 서버에서 받은값 먼저확인:", rslt);
//             alert("ppp"+rslt.heartCheck);
            if(rslt.heartCheck == 1){
//             	alert("너 왔닝?")
            	$("#heart-icon-inner").removeClass("bi-heart").addClass("bi-heart-fill")
            }
            
        },
        error: function(request, status, error) {
            alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
        }
    })
});
</script>
<!-- 별점 입력 하자마자 값 바뀌기 끝-->


<!-- 신고하기 시작-->
<script>

  $("#goReportSubmit").on("click", function() {
	  let data = {
	            eprodNum: '${expertProd.eprodNum}', // 멘토상품번호
	            memId: '${member.memId}' // 작성자닉네임
	        };		  
	  console.log("신고용 data에 뭐가 들었어?", data);	  
// 	  alert("나와랍");

	  $.ajax({
	        type: "post",
	        url: "/coco/solution/isReport",
	        data: JSON.stringify(data),
	        contentType: "application/json;charset=utf-8",
	        dataType: "json",
	        success: function(rslt) {
	            console.log("여기는 신고값이 있어야 하거둥요:", rslt);
					if(rslt.isReport>0){
						Swal.fire({
							  icon: 'warning',
							  text: '이미 신고하신 게시글입니다.',
							  confirmButtonText: '확인'
							}).then(function() {
							  location.href = "http://localhost/coco/solution/templateDetail?eprodNum=${expertProd.eprodNum}";
							})
					}else{
						Swal.fire({
							  icon: 'warning',
							  text: '신고가 접수되었습니다.',
							  confirmButtonText: '확인'
							}).then(function() {
								$("#templateReport").submit();
							})
					 }
			        },
			        error: function(request, status, error) {
			            alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
			        }
			    })		  
	  });

</script>
<!-- 신고하기 끝-->
	
	
</body>

</html>


