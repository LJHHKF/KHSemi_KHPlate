<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 상담 답변 등록</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/octicons/3.3.0/octicons.min.css"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/37.0.1/classic/ckeditor.js"></script>

<style>
/* 헤더 및 sideBar 부분 스타일 - 건들지 말것 */
* {
	box-sizing: border-box;
	padding: 0px;
}

.body {
	margin: auto;
}

.sideList {
	border: 1px solid black;
}

/* 하단부터 메인부분 스타일 작성 요망 */
</style>
</head>
<body>
	<div class="container-fluid themed-container m-0 g-0">
		<!-- 헤더부분 건들지 말것 -->
		<jsp:include page="/page/header.jsp" flush="false"></jsp:include>



		<!-- body 부분 row div 건들지 말것 -->
		<div class="row g-0 justify-content-center body">
			<!-- sideBar부분 건들지 말것 -->
			<jsp:include page="/page/sideBar.jsp" flush="false"></jsp:include>

			<div class="col-12 col-lg-9 g-0 themed-grid-col bodyContents">
				<!-- Main 내용 부분 하단부터 수정 요망 -->
				<fieldset style="margin-bottom:50px">
					<div class="row">
						<legend>대상 고객 글</legend>
					<div class="row">
						<div class="col-12 col-lg-3">
							<div class="input-group">
								<span class="input-group-text">카테고리</span>
								<input type="text" value="${parentDTO.category}" class="form-control" readonly>
							</div>
						</div>
						<div class="col-12 col-lg-9">
							<div class="input-group">
								<span class="input-group-text">제목</span>
								<input type="text" class="form-control" value="${parentDTO.title}" readonly> 
							</div>
						</div>
						<div class="col-12 col-lg-3">
							<div class="input-group">
								<span class="input-group-text">작성자</span>
								<input type="text" class="form-control" value="${parentWriter}" readonly>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 text-center">작성내용</div>
						<div class="col-12 col-lg-3">
							<img src="${parentImage}" alt="${parentImage}" id="image" class="w-100 object-fit-contain">
						</div>
						<div class="col-12 col-lg-9">
							<div id="readEditor">${parentDTO.body}</div>
						</div>
					</div>
					</div>
				</fieldset>

				<form action="/replyRegister.consult" method="get">
					<fieldset>
						<legend>답변 등록</legend>
						<input type="text" name="writer" value="${sessionScope.loginNo}" style="display:none;">
						<input type="text" name="consultID" value="${parentDTO.consultID}" style="display:none;">
						<div class="row">
							<div class="col-12">
								<div class="input-group">
									<span class="input-group-text">제목</span>
									<input type="text" class="form-control" name="title" placeholder="제목을 입력해주세요.">
								</div>
							</div>
							<div class="col-12">
								<textarea name="body" id="editor"></textarea>
							</div>
						</div>
					</fieldset>
					<div class="row">
						<div class="col-12 text-center">
							<button type="submit">submit</button>
						</div>
					</div>
				</form>


				<script>
					ClassicEditor
						.create(document.querySelector("#readEditor"))
						.then(function (editor) {
							const toolbarElement = editor.ui.view.toolbar.element;
							toolbarElement.style.display = 'none';
							editor.enableReadOnlyMode('');
						})
						.catch(error => { console.error(error) });
			
					ClassicEditor
						.create(document.querySelector("#editor"), {
							 toolbar: ['heading', '|', 'bold', 'italic', 'bulletedList', 'numberedList', 'insertTable', 'blockQuote', 'undo', 'redo',]
						})
						.catch(error => { console.error(error) });
				</script>
				<!-- body main 수정 여기까지, 하단 건들지 말것. -->
			</div>
		</div>

		<jsp:include page="/page/footer.jsp" flush="false"></jsp:include>
	</div>

</body>
</html>