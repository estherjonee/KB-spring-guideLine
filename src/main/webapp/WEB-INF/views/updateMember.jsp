<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	$(document).ready(function() {

		var sex = "${map['SEX']}";
		if (sex == "man") {
			$("#man").prop('checked', true);
			$("#woman").prop('checked', false);
		} else if (sex == "woman") {
			$("#man").prop('checked', false);
			$("#woman").prop('checked', true);
		}

	});
</script>

<div id="content-wrapper">

	<div class="container-fluid">
		<div class="container-wrapper">
			<div class="container">
				<h1>직원 정보 수정</h1>
				<p class="lead">직원 정보를 수정하세요.</p>
				<form
					action="${pageContext.request.contextPath}/admin/updateMember?${_csrf.parameterName}=${_csrf.token}"
					method="post">
					<div class="form-group">
						<label for="name">이름 : </label> <input type="text" name="name"
							id="name" class="form-control" value="${map['NAME']}" />

					</div>

					<div class="form-group">
						<label for="category">성별 : </label> <input type="radio" name="sex"
							id="man" value="man" value="${map['SEX']}" /> 남자 <input
							type="radio" name="sex" id="woman" value="woman"
							value="${map['SEX']}" /> 여자
					</div>

					<div class="form-group">
						<label for="manufacturer">나이 : </label> <input type="number"
							name="age" id="age" class="form-control" value="${map['AGE']}" />


					</div>

					<div class="form-group">
						<label for="price">직책 : </label> <input type="text"
							name="position" id="position" class="form-control"
							value="${map['POSITION']}" />


					</div>

					<input type="hidden" name="memberId" id="memberId"
						value="${map['MEMBER_ID']}" /> 
						
					<input type="submit"
						value="submit" class="btn btn-default"> <a
						href="<c:url value="redirect:/"/>" class="btn btn-default">cancel</a>
				</form>

				<br />

			</div>
		</div>
	</div>
</div>
