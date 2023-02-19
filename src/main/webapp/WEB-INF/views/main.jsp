
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="./include/header.jsp"%>
<link rel="stylesheet" href="../../resources/css/styles.css">
<link rel="stylesheet" href="../../resources/css/full.css">
<div class="video-box">
	<video class="video-container" autoplay muted loop>
		<source src="../resources/images/people.mp4" type="video/mp4"><source>
</div>
<section class="features-icons bg-light text-center">
	<div class="container">
		<div class="row">
			<hr>
			<h2 id="best" class="blinking1 col text-start">BEST PROGRAM</h2>
			<h2 id="new" class="blinking2 col text-end">NEW PROGRAM</h2>
			<hr>
		</div>
		<div class="row">
			<div id="bestview"
				class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-1">
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources//images/climb.jpg" role="img"
							focusable="false">
						<div class="card-body">
							<p class="card-text">Mountain-Climbing</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources//images/맛집.jpg" role="img"
							focusable="false">
						<div class="card-body">
							<p class="card-text">Food-Trip</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources//images/골프.png" role="img"
							focusable="false">
						<div class="card-body">
							<p class="card-text">Golf</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources/images/footsoccer.avif" role="img"
							focusable="false">

						<div class="card-body">
							<p class="card-text">Soccer</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="newview"
				class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-1">
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources//images/horse.jpg" role="img"
							focusable="false">

						<div class="card-body">
							<p class="card-text">Horse riding</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources/images/billiards.jpg" role="img"
							focusable="false">

						<div class="card-body">
							<p class="card-text">Artistic billiards</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources/images/badminton.jpg" role="img"
							focusable="false">

						<div class="card-body">
							<p class="card-text">Badminton</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card shadow-sm">
						<img class="bd-placeholder-img card-img-top" width="100%"
							height="225" src="../resources/images/tennis.jpg" role="img"
							focusable="false">

						<div class="card-body">
							<p class="card-text">Tennis</p>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-outline-secondary ani-button">상세보기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Image Showcases-->
<section class="showcase">
	<div class="container-fluid p-0" style="background-color: aliceblue;">

		<div class="row g-0 " style="position: relative;">
			<!-- <div class="white-box"></div> -->
			<div
				class="col-lg-6 order-lg-2 text-white showcase-img scale-up-hor-left ani-img"
				style="background-image: url('../resources/images/mainsoccer.jpg'); background-size: cover; background-position: center;"></div>
			<div class="col-lg-6 order-lg-1 my-auto showcase-text">
				<h2>Sports-Futsal</h2>
				<p class="lead mb-0">Partner in every way<br> 이 세상은 훌륭하게 구성되어 있어,언제 어디에 있더라도 누구나 다른 모든 것들과 조화를 이루고 있다.</p>
			</div>
		</div>
		<div class="row g-0" style="position: relative;">
			<div class="white-box"></div>
			<div class="col-lg-6 text-white showcase-img ani-img"
				style="background-image: url('../resources/images/waterski.jpg'); background-size: cover; background-position: center;"></div>
			<div class="col-lg-6 my-auto showcase-text">
				<h2>Activity-water-skiing</h2>
				<p class="lead mb-0">Innovation for a Better Life<br>대부분의 사람들은 자신이 행복하고자 마음먹은 만큼 행복해지다.</p>
			</div>
		</div>
		<div class="row g-0" style="position: relative;">
			<div class="white-box"></div>
			<div class="col-lg-6 order-lg-2 text-white showcase-img ani-img"
				style="background-image: url('../resources/images/cafe.jfif');background-position: center;"></div>
			<div class="col-lg-6 order-lg-1 my-auto showcase-text">
				<h2>Trip-visiting Food Trip</h2>
				<p class="lead mb-0">어제보다 더 나은 오늘,오늘보다 더 큰 내일로- <br>항해에 나서라!시도하라! 그 외에는 아무것도 없다</p>
			</div>
		</div>
		<div class="row g-0" style="position: relative;">
			<div class="white-box"></div>
			<div class="col-lg-6 text-white showcase-img ani-img"
				style="background-image: url('../resources/images/travel1.jpg');background-position: center;"></div>
			<div class="col-lg-6 my-auto showcase-text">
				<h2>Travel</h2>
				<p class="lead mb-0">미래사회에 대한 영감, 새로운 미래 창조!<br>마음을 담장 너머로 던져 넘기면 나머지는 저절로 따라 넘어가게 된다.</p>
			</div>
		</div>

	</div>
</section>
<script>
	$(document).ready(function(){
		   
		   $("#bestview").show();
		   $("#newview").hide();
	
		   $("#best").on("click" , function(){
		      $("#bestview").show();
		      $("#newview").hide();
		      console.log("click!");
		   });
		   
		   $("#new").on("click" , function(){
		      $("#newview").show();
		      $("#bestview").hide();
		      console.log("click!");
		   });
		});
	
		$(function(){
			$(document).one('click', '.like-review', function(e) {
				$(this).html('<i class="fa fa-heart" aria-hidden="true"></i> You liked this');
				$(this).children('.fa-heart').addClass('animate-like');
			});
		});
</script>


<%@include file="./include/footer.jsp"%>