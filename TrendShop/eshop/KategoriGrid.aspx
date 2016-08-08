﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KategoriGrid.aspx.cs" Inherits="eshop.KategoriGrid" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Rammus</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Fonts======================= -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
		
		<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700italic,700,400italic' rel='stylesheet' type='text/css'>
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
		<link rel="shortcut icon" href="Content\img\favicon.ico" type="image/x-icon">
		<!-- countdown.css ======================== -->
        <link rel="stylesheet" href="Content\css\jquery.countdown.css">
		<!-- Bootstrap CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\bootstrap.min.css">
		<!-- Mobile Menu Slicknav CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\slicknav.css">
		<!-- Font-awesome CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\font-awesome.min.css">
		<!-- animate CSS
		============================================ -->         
        <link rel="stylesheet" href="Content\css\animate.css">
		
		<!-- nivo slider CSS
		============================================ -->
		<link rel="stylesheet" href="Content\custom-slider\css\nivo-slider.css" type="text/css">
		<link rel="stylesheet" href="Content\custom-slider\css\preview.css" type="text/css" media="screen">
		
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\owl.carousel.css">
		
		<!-- FILTER_PRICE CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\jquery-ui.min.css">
		
		<!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\normalize.css">
		<!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\main.css">
		<!-- Style CSS
		============================================ -->
        <link rel="stylesheet" href="Content\style.css">
		<!-- Responsive CSS
		============================================ -->
        <link rel="stylesheet" href="Content\css\responsive.css">
		<!-- modernizr js
		============================================ -->
        <script src="Content\js\vendor\modernizr-2.6.2.min.js"></script>
		
    </head>
    <body class="category-gird home_2">
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		
		<!--HEADER AREA START-->
		<header>
		<div class="header-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<!--HEADER-TOP-MENU LEFT START-->
						<div class="header-top-menu">
							<nav>
								<ul>
									<li><a href="#"><img src="Content\img\flag.png" alt=""><span><i class="fa fa-angle-down"></i></span></a>
										<ul class="sup-menu">
											<li><a href="#"><img src="Content\img\country\it.gif" alt="">italiano</a></li>
											<li><a href="#"><img src="Content\img\country\nl_nl.gif" alt="">Nederlands</a></li>
											<li><a href="#"><img src="Content\img\country\de_de.gif" alt="">Deutsch</a></li>
											<li><a href="#"><img src="Content\img\country\he_il.gif" alt=""> עברית</a></li>
											<li><a href="#"><img src="Content\img\country\en.gif" alt="">English</a></li>
										</ul>
									</li>
									<li><a href="#"><i class="fa fa-usd"></i><span><i class="fa fa-angle-down"></i></span></a>
										<ul class="sup-menu currency">
											<li><a href="#"><i class="fa fa-eur"></i></a></li>
											<li><a href="#"><i class="fa fa-rub"></i></a></li>
											<li><a href="#"><i class="fa fa-krw"></i></a></li>
											<li><a href="#"><i class="fa fa-gbp"></i></a></li>
											<li><a href="#"><i class="fa fa-inr"></i></a></li>
										</ul>
									</li>
									<li><a href="#"><i class="fa fa-user"></i><span><i class="fa fa-angle-down"></i></span></a>
										<ul class="sup-menu">
											<li><a href="#">Profile</a></li>
											<li><a href="#">Logout</a></li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>
						<!--HEADER-TOP-MENU-LEFT END-->
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
						<!--HEADER-TOP-MENU-RIGHT START-->
						<div class="header-top-right">
							<div class="heder-right-menu">
							<nav>
								<ul>
									<li><a href="category_grid.htm"><span><i class="fa fa-align-justify"></i></span>All Category <span class="dropdown"><i class="fa fa-angle-down"></i></span></a>
										<ul>
											<li><a href="category_grid.htm">Mens</a></li>
											<li><a href="category_grid.htm">Womens</a></li>
											<li><a href="category_grid.htm">Bag</a></li>
											<li><a href="category_grid.htm">Digital Camera</a></li>
										</ul>
									</li>
								</ul>
							</nav>
							</div>
							<div class="form-and-cart">
								<form action="#">
									<input type="text" placeholder="Search...">
									<span class="search-button"><i class="fa fa-search"></i></span>
								</form>
								<div class="cart-empty shopping_cart">
									<a href="#"><i class="fa fa-shopping-cart"></i></a>
									<!-- CART-PRODUCT-LIST START-->
									<div class="cart-product-list">
										<div class="mini-cart-content">
											<div class="cart-img-details">											
												<div class="cart-img-photo">
													<a href="#"><img src="Content\img\cart_list_prod.jpg" alt=""></a>
													<span class="quantity">1</span>
												</div>
												<div class="cart-img-contaent">
													<a href="#"><h4>Vestibulum et mollis nunc</h4></a>
													<span>$120.00</span>
												</div>
												<div class="pro-del"><a href="#"><i class="fa fa-times-circle"></i></a></div>
											</div>
											<div class="clear"></div>
											<div class="cart-img-details">											
												<div class="cart-img-photo">
													<a href="#"><img src="Content\img\cart_list_prod_2.jpg" alt=""></a>
													<span class="quantity">1</span>
												</div>
												<div class="cart-img-contaent">
													<a href="#"><h4>Aenean eu tristique</h4></a>
													<span>$170.00</span>
												</div>
												<div class="pro-del"><a href="#"><i class="fa fa-times-circle"></i></a></div>
											</div>
											<p class="total">Subtotal: <span class="amount">$290.00</span></p>
											<div class="clear"></div>
											<p class="cart-button-top"><a href="checkout.htm">Checkout</a></p>
										</div>
									</div>
									<!-- CART-PRODUCT-LIST END-->
								</div>
							</div>
						</div>
						<!--HEADER-TOP-MENU-RIGHT END-->
					</div>
				</div>
			</div>
		</div>
		<!--HEADER AREA TOP END-->
		
		<!--MAINMENU AREA START-->
		<div class="mainmenu-area">
			<div class="container">
				<div class="main-menu">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<div class="row">							
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--LOGO AREA START-->
									<div class="logo">
										<a href="index.htm"><img src="Content\img\logo-3.png" alt=""></a>
									</div>
									<!--LOGO AREA END-->
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8">
								<!--MAINMENU START-->
									<div class="mainmenu">
										<nav>
											<ul id="nav">
												<li class="current"><a href="index.htm"><span><i class="fa fa-home"></i></span>Home <i class="fa fa-arrow-circle-o-right"></i></a>
													<ul class="sub-menu">
														<li><a href="index-2.htm">Home page 2</a></li>
														<li><a href="index-3.htm">Home page 3</a></li>
													</ul>
												</li>
												<li><a href="#"><span><i class="fa fa-briefcase"></i></span>About</a></li>
												<li><a href="blog_sidebar.htm"><span><i class="fa fa-pencil-square-o"></i></span>Blogs <i class="fa fa-arrow-circle-o-right"></i></a>
													<ul class="sub-menu">
														<li><a href="blog_sidebar.htm">Blog With Sidebar</a></li>
														<li><a href="blog_no_sidebar.htm">Blog With Out Sidebar</a></li>
														<li><a href="blog_details.htm">Blog details page</a></li>
													</ul>
												</li>
												<li><a href="category_grid.htm"><span><i class="fa fa-shopping-cart"></i></span>Shop <i class="fa fa-arrow-circle-o-right"></i></a>
													<div class="mega-menu">
														<div class="single-mega-menu">
															<h3 class="hedding-border">Shop Categories</h3>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Men</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Women</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Shoes</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Bags</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Accessories</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Clothings</a>
														</div>
														<div class="single-mega-menu">
															<h3 class="hedding-border midle">Shop Variants</h3>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Shop full width</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Shop sidebar right</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Shop sidebar left</a>
															<a href="category_grid.htm"><i class="fa fa-arrow-circle-o-right"></i>Sategory listing</a>
															<a href="product_details.htm"><i class="fa fa-arrow-circle-o-right"></i>Products detail</a>
														</div>
														<div class="single-mega-menu">
															<h3 class="hedding-border left-border">Page</h3>
															<a href="checkout.htm"><i class="fa fa-arrow-circle-o-right"></i>Checkout</a>
															<a href="cart.htm"><i class="fa fa-arrow-circle-o-right"></i>Cart</a>
															<a href="#"><i class="fa fa-arrow-circle-o-right"></i>My account</a>
															<a href="#"><i class="fa fa-arrow-circle-o-right"></i>Order tracking</a>
														</div>
													</div>
												</li>
												<li><a href="category_list.htm"><span><i class="fa fa-leaf"></i></span>Featured</a></li>
												<li><a href="contact_us.htm"><span><i class="fa fa-envelope"></i></span>Contact</a></li>
											</ul>						
										</nav>
									</div>
									<!--MAINMENU END-->
								</div>
							</div>
						</div>
					</div>
					<!-- MOBILE-MENU START-->
					<div class="row">
						<div class="col-md-12">
							<div class="mobile-menu">
								<ul id="mobile-menu">
									<li>
										<a href="index.htm">Home</a>
										<ul>
											<li><a href="index-2.htm">Home page 2</a></li>
											<li><a href="index-3.htm">Home page 3</a></li>
										</ul>
									</li>
									<li><a href="#">About</a></li>
									<li><a href="blog_sidebar.htm">Blogs</a>
										<ul>
											<li><a href="blog_sidebar.htm">Blog With Sidebar</a></li>
											<li><a href="blog_no_sidebar.htm">Blog With Out Sidebar</a></li>
											<li><a href="blog_details.htm">Blog details page</a></li>
										</ul>
									</li>
									<li><a href="category_grid.htm">Shop</a>
										<ul>
											<li><a href="category_grid.htm">Men</a></li>
											<li><a href="category_grid.htm">Women</a></li>
											<li><a href="category_grid.htm">Shoes</a></li>
											<li><a href="category_grid.htm">Bags</a></li>
											<li><a href="category_grid.htm">Accessories</a></li>
											<li><a href="category_grid.htm">Clothings</a></li>
											<li><a href="category_grid.htm">Shop full width</a></li>
											<li><a href="category_grid.htm">Shop sidebar right</a></li>
											<li><a href="category_grid.htm">Shop sidebar left</a></li>
											<li><a href="category_grid.htm">Sategory listing</a></li>
											<li><a href="product_details.htm">Products detail</a></li>
											<li><a href="checkout.htm">Checkout</a></li>
											<li><a href="cart.htm">Cart</a></li>
											<li><a href="#">My account</a></li>
											<li><a href="#">Order tracking</a></li>
										</ul>
									</li>
									<li><a href="category_list.htm">Featured</a></li>
									<li><a href="contact_us.htm">Contact</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- MOBILE-MENU END-->
				</div>
			</div>
		</div>
		<!--MAINMENU AREA END-->
		</header>
		<!--HEADER AREA END-->
		
		<!--MENU-BOTTOM START-->
		<div class="menu-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<div class="category-gird-menu">
							<nav>
								<ul>
									<li><a href="index.htm"><i class="fa fa-home"></i> Home</a></li>
									<li><a class="active-current" href="category_grid.htm">Category List</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--MENU-BOTTOM END-->
		<div class="slider-and-category">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
					<!-- SAID-BAR START -->
						<div class="side-bar"> 
							<h2><i class="fa fa-align-justify"></i>Category</h2>
							<nav>
								<ul>
									<li><a href="category_grid.htm"><span><i class="fa fa-female"></i></span>Womens <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">							
												<a href="category_grid.htm">Clothing</a>
												<a href="category_grid.htm">Shoes</a>
												<a href="category_grid.htm">Bags</a>
												<a href="category_grid.htm">Headwear</a>
												<a href="category_grid.htm">Accessories</a>
												<a href="category_grid.htm">News Arrivals</a>
											</span>
											<span>
												<img src="Content\img\mens.jpg" alt="Mens">
											</span>
										</div>
									</li>
									
									<li><a href="category_grid.htm"><span><i class="fa fa-male"></i></span>Mens <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">							
												<a href="category_grid.htm">Clothing</a>
												<a href="category_grid.htm">Shoes</a>
												<a href="category_grid.htm">Bags</a>
												<a href="category_grid.htm">Headwear</a>
												<a href="category_grid.htm">Accessories</a>
												<a href="category_grid.htm">News Arrivals</a>
											</span>
											<span>
												<img src="Content\img\mens.jpg" alt="Mens">
											</span>
										</div>
									</li>
									
									<li><a href=""><span><i class="fa fa-suitcase"></i></span>Bags <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">							
												<a href="category_grid.htm">Clothing</a>
												<a href="category_grid.htm">Shoes</a>
												<a href="category_grid.htm">Bags</a>
												<a href="category_grid.htm">Headwear</a>
												<a href="category_grid.htm">Accessories</a>
												<a href="category_grid.htm">News Arrivals</a>
											</span>
											<span>
												<img src="Content\img\mens.jpg" alt="Mens">
											</span>
										</div>
									</li>
									
									<li><a href="category_grid.htm"><span><i class="fa fa-video-camera"></i></span>Digital Camera <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">							
												<a href="category_grid.htm">Clothing</a>
												<a href="category_grid.htm">Shoes</a>
												<a href="category_grid.htm">Bags</a>
												<a href="category_grid.htm">Headwear</a>
												<a href="category_grid.htm">Accessories</a>
												<a href="category_grid.htm">News Arrivals</a>
											</span>
											<span>
												<img src="Content\img\mens.jpg" alt="Mens">
											</span>
										</div>
									</li>
									
									<li><a href="category_grid.htm"><span><i class="fa fa-apple"></i></span>Mobile Phone </a></li>
									
									<li><a href="category_grid.htm"><span><i class="fa fa-desktop"></i></span>Computer <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">							
												<a href="category_grid.htm">Clothing</a>
												<a href="category_grid.htm">Shoes</a>
												<a href="category_grid.htm">Bags</a>
												<a href="category_grid.htm">Headwear</a>
												<a href="category_grid.htm">Accessories</a>
												<a href="category_grid.htm">News Arrivals</a>
											</span>
											<span>
												<img src="Content\img\mens.jpg" alt="Mens">
											</span>
										</div>
									</li>
									<li><a href="category_grid.htm"><span><i class="fa fa-gift"></i></span>Gift</a></li>
								</ul>
							</nav>
						</div>
						<!-- SAID-BAR END -->
						
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<!-- FILTER_PRICE START-->
								<div class="filter_price">
									<h2 class="category-heding">Filter by price</h2>
									<div id="slider-range"></div>
									<p>
									  Price range:<input type="text" id="amount" readonly="">
									</p>
									<a href="#">Filter</a>
								</div>
								<!-- FILTER_PRICE END-->
							</div>
							<div class="col-lg-12 col-md-12 col-sm-6">
								<!-- MANUFACTURERS-AREA START-->
								<div class="manufacturers-area">
									<h2 class="category-heding">Manufacturers</h2>
									<div class="manufacturers-color-menu">
										<nav>
											<ul>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Aliquam</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Duis tempus id</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Leo quis molestie.</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Suspendisse</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Nunc gravida</a></li>
											</ul>
										</nav>
									</div>
								</div>
								<!-- MANUFACTURERS-AREA END-->
							</div>
							<div class="col-lg-12 col-md-12 col-sm-6">
								<!-- COLOR-AREA START-->
								<div class="color-area">
									<h2 class="category-heding">Color</h2>
									<div class="manufacturers-color-menu">
										<nav>
											<ul>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Red</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Orange</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Blue</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Black</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Green</a></li>
											</ul>
										</nav>
									</div>
								</div>
								<!-- COLOR-AREA END-->
							</div>
							<div class="col-lg-12 col-md-12 col-sm-6">
								<!-- COMPARE START-->
								<div class="compare">
									<div class="news-letter">
										<h2>Compare</h2>
										<form action="#">
											<span class="input-box">
											<input type="text" name="Email" placeholder="You have no item(s) to compare">
											</span>
										</form>
									</div>
								</div>
								<!-- COMPARE END-->
							</div>
							<div class="col-lg-12 col-md-12 col-sm-6">
								<!-- POPULAR-TAGS START-->
								<div class="popular-tags">
									<h2 class="category-heding">Popular tags</h2>
									<div class="tags">
										<ul>
											<li><a href="#">agency</a></li>
											<li><a href="#">blog</a></li>
											<li><a href="#">business</a></li>
											<li><a href="#">clean</a></li>
											<li><a href="#">corporate</a></li>
											<li><a href="#">creative</a></li>
											<li><a href="#">ecommerce</a></li>
											<li><a href="#">elegant</a></li>
											<li><a href="#">fashion</a></li>
											<li><a href="#">minimal</a></li>
										</ul>
									</div>
								</div>
								<!-- POPULAR-TAGS END-->
							</div>
							<!-- OFFER_AREA START-->
							<div class="col-lg-12 col-md-12 hidden-sm">
								<!-- OFFER_AREA START-->
								<div class="offer_area">
									<div class="offer_img">
										<img src="Content\img\offer-img.jpg" alt="Offer">
										<div class="offer-text">
											<h2>Sale</h2>
											<p>up to</p>
											<h2 class="amout">30</h2>
										</div>
									</div>
								</div>
								<!-- OFFER_AREA END-->
							</div>
						</div>
					</div>			
					<div class="col-lg-9 col-md-9">
						<!-- CATEGORY-BANNER START-->
						<div class="category-banner">
							<img src="Content\img\category_banner.jpg" alt="">
						</div>
						<!-- CATEGORY-BANNER END-->
						<!-- GIRD CATEGORY-FORM START-->
						<div class="category-form">
							<div class="col-lg-3 col-md-3 col-sm-3">
								<!-- GIRD-AND-LIST-MENU START-->
								<div class="gird-and-list-menu">
									<nav>
										<ul>
											<li><a href="category_list.htm"><i class="fa fa-th-list"></i></a></li>
											<li><a href="category_grid.htm" class="gird-active-color"><i class="fa fa-th-large"></i></a></li>
										</ul>
									</nav>
								</div>
								<!-- GIRD-AND-LIST-MENU END-->
							</div>
							<!-- FORM-AREA START-->
							<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
								<div class="form-area">
									<div class="sort-by">
										Sort By
										<select name="short">
											<option value="">Position
											<option value="">Position
										</select>
									</div>
									<div class="show-value">
										Show
										<select name="show">
											<option value="16">16
											<option value="15">15
										</select>
										Per Page
									</div>
								</div>
							</div>
							<!-- FORM-AREA END-->
						</div>
						<!-- GIRD CATEGORY-FORM END-->	
						<!--CATEGORY PRODUCT GIRD START-->
						<div class="row">
							<div class="category-gird-product-area">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\fetured\fetured.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\fetured\fetured_3.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>										
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\topcategories\category_pic_3.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_1.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\fetured\fetured_1.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\fetured\fetured.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\topcategories\category_pic_1.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_3.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\topcategories\home_4_category_pic_1.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\categories_gird.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\categories_gird.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\home_4_category_pic_1.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\fetured\fetured_3.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\fetured\fetured.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\fetured\fetured_2.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\fetured\fetured_3.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\fetured\best_sale.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_2.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\topcategories\category_pic_2.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_1.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\categories_gird_1.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_1.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
										<div class="product_img">
											<a href="#">
												<img src="Content\img\product\categories_gird_2.jpg" alt="Special" class="primary-image">
												<img src="Content\img\product\topcategories\category_pic_2.jpg" alt="Special" class="secondary-image">
											</a>
											<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
												<span class="quick-view">
													<i class="fa fa-external-link"></i>Quick view
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text">$120.00</span>
													<span class="addcart-text-del">$132.00</span>
												</div>
												<div class="wish">
													<a href="#" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="product_details.htm"><span>Vestibulum et mollis nunc</span></a>
											<span class="star">
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star"></i>
												<i class="fa fa-star"></i>
											</span>
										</div>
									</div>
									<!--SINGLE-FEATURED-PRODUCT END-->
								</div>	
							</div>
							<!--CATEGORY PRODUCT-AREA END-->
						</div>
						<!--CATEGORY PRODUCT GIRD END-->
						<!--PGAINATION AREA START-->
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="pagination-area">
									<ul class="pagination">
										<li><a href="#">1</a></li>
										<li><a href="#" class="active_p">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!--PGAINATION AREA END-->
					</div>
						<!-- GIRD CATEGORY-FORM END-->
				</div>					
			</div>
		</div>		
		<!-- LOGO-BAND-AREA START-->
		<div class="logo-band-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 logo-band">
						<h3 class="area-heading">Logo Brands</h3>
						<div class="logo-area">
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_1.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_2.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_3.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_4.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_5.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_2.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_1.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_3.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_5.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_1.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
							<!-- SINGLE-LOGO START-->
							<div class="single-logo">
								<a href="#">
									<div class="logo-pic">
										<img src="Content\img\logo_band\logo_3.png" alt="Logo">
									</div>
								</a>
							</div>
							<!-- SINGLE-LOGO END-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- LOGO-BAND-AREA END-->
		
		<!-- FOOTER-AREA START-->
		<div class="footer-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="footer">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-sm-5">
									<!-- FOOTER-LOGO START-->
									<div class="footer-logo">
										<a href="index.htm"><img alt="" src="Content\img\logo_footer_1.png"></a>
										<p>Vestibulum gravida magna ut commodo lacinia. Quisque dictum in arcu ut vestibulum. Morbi sed tempor lacus...  <a href="#">Readmore>></a></p>
									</div>
									<!-- FOOTER-LOGO END-->
								</div>
								<div class="col-lg-3 col-md-3 col-sm-4 hidden-sm">
									<!-- INFORMATION START-->
									<div class="information">
										<h3>Infomation</h3>
										<ul>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													Specials
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													New products
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													Best sellers
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													Our stores
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													Contact us
												</a>
											</li>
										</ul>
									</div>
									<!-- INFORMATION END-->
								</div>
								<div class="col-lg-3 col-md-3 col-sm-3">
								<!-- MYACCOUNT START-->
									<div class="myaccount">
										<h3>My Account</h3>
										<ul>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													My orders
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													My credit slips
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													My addresses
												</a>
											</li>
											<li>
												<a href="#">
													<span><i class="fa fa-arrow-circle-o-right"></i></span>
													My personal info
												</a>
											</li>
										</ul>
									</div>
									<!-- MYACCOUNT END-->
								</div>
								
								<!-- JOIN-US AREA START-->
								<div class="col-lg-3 col-md-3 col-sm-4">
									<div class="join-us">
										<h3>Join us</h3>
										<span>Follow with us now!</span>
									</div>
									<div class="social-icon">
										<ul>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
											<li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
											<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
										</ul>
									</div>
								</div>
								<!-- JOIN-US AREA END-->
							</div>
							<!-- ROW END-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- FOOTER-AREA START-->
		<div class="footer-bottum-menu-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="footer-bottum">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<!-- FOOTER-BOTTUM-MENU START-->
									<div class="footer-bottum-menu">
										<ul>
											<li><a href="#">Our stores</a></li>
											<li><a href="#">Contact us</a></li>
											<li><a href="#">Terms and conditions of use</a></li>
											<li><a href="#">About us</a></li>
											<li><a href="#">Sitemap</a></li>
										</ul>
									</div>
									<!-- FOOTER-BOTTUM-MENU END-->
								</div>
								<div class="col-lg-6 col-md-6">
									<!-- CARD-AREA START-->
									<div class="card-area">
										<a href="#"><img src="Content\img\paypal.png" alt=""></a>
										<a href="#"><img src="Content\img\amazon.png" alt=""></a>
										<a href="#"><img src="Content\img\skrill.png" alt=""></a>
										<a href="#"><img src="Content\img\visa.png" alt=""></a>
										<a href="#"><img src="Content\img\discover.png" alt=""></a>
										<a href="#"><img src="Content\img\master.png" alt=""></a>
									</div>
									<!-- CARD-AREA END-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- COPY-RIGHT START-->
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="copy-right">
						<p>Copyright &copy; 2015 <a href="#">Rammustheme</a>. All Rights Reserved</p>
					</div>
				</div>
			</div>
		</div>
		<!-- COPY-RIGHT END-->
		
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<div class="product-images">
									<div class="main-image images">
										<img alt="" src="Content\img\product\fetured\fetured_1.jpg">
									</div>
									<div class="thumbnail-img">
										<img src="Content\img\product\product_details\product_details_small_1.jpg" alt="">
										<img src="Content\img\product\product_details\product_details_small_2.jpg" alt="">
										<img src="Content\img\product\product_details\product_details_small_3.jpg" alt="">
									</div>
								</div><!-- .product-images -->
								
								<div class="product-info">
									<h1>Vestibulum et mollis nunc</h1>
									<div class="price-box">
										<p class="price"><span class="special-price"><span class="amount">$120.00</span></span></p>
									</div>
									<a href="#" class="see-all">See all features</a>
									<div class="quick-add-to-cart">
										<form method="post" class="cart">
											<div class="numbers-row">
												<input type="number" id="french-hens" value="3">
											</div>
											<button class="single_add_to_cart_button" type="submit">Add to cart</button>
										</form>
									</div>
									<div class="quick-desc">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.
									</div>
									<div class="social-sharing">
										<div class="widget widget_socialsharing_widget">
											<h3 class="widget-title-modal">Share this product</h3>
											<ul class="social-icons">
												<li><a target="_blank" title="Facebook" href="#" class="facebook social-icon"><i class="fa fa-facebook"></i></a></li>
												<li><a target="_blank" title="Twitter" href="#" class="twitter social-icon"><i class="fa fa-twitter"></i></a></li>
												<li><a target="_blank" title="Pinterest" href="#" class="pinterest social-icon"><i class="fa fa-pinterest"></i></a></li>
												<li><a target="_blank" title="Google +" href="#" class="gplus social-icon"><i class="fa fa-google-plus"></i></a></li>
												<li><a target="_blank" title="LinkedIn" href="#" class="linkedin social-icon"><i class="fa fa-linkedin"></i></a></li>
											</ul>
										</div>
									</div>
								</div><!-- .product-info -->
							</div><!-- .modal-product -->
						</div><!-- .modal-body -->
					</div><!-- .modal-content -->
				</div><!-- .modal-dialog -->
			</div>
			<!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->
		
		<!-- jquery-1.11.3.min js -->
        <script src="Content\js\vendor\jquery-1.11.3.min.js"></script>
		<!-- bootstrap.min js -->
        <script src="Content\js\bootstrap.min.js"></script>
		<!-- FILTER_PRICE js -->
        <script src="Content\js\jquery-ui.min.js"></script>
		<!-- owl.carousel.min js -->
        <script src="Content\js\owl.carousel.min.js"></script>
		<!-- jquery.slicknav.min js -->
        <script src="Content\js\jquery.slicknav.min.js"></script>
		<!-- Nivo slider js
		============================================ --> 		
		<script src="Content\custom-slider\js\jquery.nivo.slider.js" type="text/javascript"></script>
		<script src="Content\custom-slider\home.js" type="text/javascript"></script>
		<!-- plugins js -->
        <script src="Content\js\plugins.js"></script>
		<!-- jquery.scrollUp js -->
        <script src="Content\js\jquery.scrollUp.min.js"></script>
		<!-- Countdown JS-->
		<script src="Content\js\jquery.plugin.min.js"></script>
		<script src="Content\js\jquery.countdown.min.js"></script>
		<!-- main JS -->
		 <script src="Content\js\main.js"></script>		 
		 
    </body>
</html>
