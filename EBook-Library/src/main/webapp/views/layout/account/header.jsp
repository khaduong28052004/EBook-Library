<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class=" sticky-top">
	<!-- <nav class="navbar bg-body-tertiary"> -->
	<div
		class="navbar navbar-expand-lg bd-navbar container-fluid  justify-content-center align-items-center">
		<a class="navbar-brand " href="/index.html"><img
			src="/views/img/logo/V-white.png" alt=""></a>
		<form class="d-flex" role="search">
			<button type="button" class="btnSeacrh" data-bs-toggle="modal"
				data-bs-target="#btnSeacrh">Seacrh</button>
		</form>
		<div class="nav-item dropdown">
			<a class="nav-link " href="#" role="button" data-bs-toggle="dropdown"
				aria-expanded="false"> <img width="24px" height="24px"
				class="sunHeader" src="/views/img/icon/user.png" alt="">
			</a>
		</div>
	</div>

	<div class="container-fluid" style="background-color: white;">
		<form class="d-flex" role="search">
			<button type="button"
				style="background-color: white; color: white; border: none;"
				data-bs-toggle="modal" data-bs-target="#btnSeacrh">Seacrh</button>
		</form>
	</div>
</header>
<div class="modal fade" id="btnSeacrh" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            <input class="form-control me-2 search" type="search" placeholder="Search" aria-label="Search">
            
        </div>
        <div class="modal-body">
          ...
        </div>

      </div>
    </div>
  </div>
