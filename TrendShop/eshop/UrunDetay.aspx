<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="eshop.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <body class="product_details home_1 home_2">
	<div class="menu-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<div class="category-gird-menu">
							<nav>
								<ul>
									<li><a href="index.htm"><i class="fa fa-home"></i> Home</a></li>
									<li><a class="active-current" href="#">Efficitur viverra lacus</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--MENU-BOTTOM END-->
		
		<!-- MAINCONTAIN-AREA START-->
		<div class="maincontain-area">
			<div class="container">
				<div class="row">
					<div class="maincontain">
						<div class="col-lg-9 col-md-9">
							<!-- PRODUCT-DETAILS-AREA START-->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="category_single_list">
									<div class="category_image">
										<div class="larg_img">
											<div class="tab-content">
												<div class="tab-pane fade in active" id="image1">
													<img src="content\img\product\product_details\larg_product_details_1.jpg" alt="">
												</div>
												<div class="tab-pane fade" id="image2">
													<img src="content\img\product\product_details\larg_product_details_2.jpg" alt="">
												</div>
												<div class="tab-pane fade" id="image3">
													<img src="content\img\product\product_details\larg_product_details_3.jpg" alt="">
												</div>
												<div class="tab-pane fade" id="image4">
													<img src="content\img\product\product_details\larg_product_details_4.jpg" alt="">
												</div>
											</div>
										</div>
										<div class="small_img">
											<ul class="nav nav-tabs">
												<li class="active"><a href="#image1" data-toggle="tab"><img src="content\img\product\product_details\product_details_small_1.jpg" alt=""></a></li>
												<li><a href="#image2" data-toggle="tab"><img src="content\img\product\product_details\product_details_small_2.jpg" alt=""></a></li>
												<li><a href="#image3" data-toggle="tab"><img src="content\img\product\product_details\product_details_small_3.jpg" alt=""></a></li>
												<li><a href="#image4" data-toggle="tab"><img src="content\img\product\product_details\product_details_small_4.jpg" alt=""></a></li>
											</ul>
										</div>
									</div>
									<div class="category_text">
										<div class="off_percent">-20%</div>
										<div class="price_old_new">
											<p>$640.00</p>
											<p class="old_price"><del>$720.00</del></p>
										</div>
										<div class="category_prod_description">
											<h3>Efficitur viverra lacus</h3>
											<p>Sed at lacus in odio consequat volutpat a eget nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed vel quam tincidunt, interdum nunc a, sagittis mauris. Pellentesque sagittis vehicula sem quis molestie.</p>
										</div>
										<div class="size_color">
											<div class="size">
												<label>Size*</label>
												<select name="size">
													<option value="">Select Option
													<option value="">X
													<option value="">L
													<option value="">M
												</select>
											</div>
											<div class="color">
												<label>Color*</label>
												<select name="color">
													<option value="1">Select Option
													<option value="1">Red
													<option value="1">Blue
													<option value="1">Green
												</select>
											</div>
										</div>
										<div class="inc_quentity">
											<input type="number" name="quentity" value="1">
										</div>
										<div class="category_prod_card_area">
											<a href="#" class="cart">
												<i class="fa fa-shopping-cart"></i>
											</a>
											<a href="#" class="add-text-lis">
												Add to cart
											</a>
											<a href="#" class="icon_exc">
												<i class="fa fa-exchange"></i>
											</a>
											<a href="#" class="heart">
												<i class="fa fa-heart-o"></i>
											</a>
										</div>
									</div>
									</div>
								</div>
							</div>
							<!-- PRODUCT-DETAILS-AREA END-->
							
							<!-- PRODUCT_DESCREIPTION START-->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="product_descreiption">
										<div class="tab_menu">
											  <ul class="nav nav-tabs">
												<li class="active"><a href="#description" data-toggle="tab">Description</a></li>
												<li><a href="#review" data-toggle="tab">Customer review</a></li>
												<li><a href="#tags" data-toggle="tab">Product tags</a></li>
											  </ul>
										</div>
										  <!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane fade in active" id="description">
												<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. </p>
											</div>
											<div class="tab-pane fade" id="review">
												<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.</p>
											</div>
											<div class="tab-pane fade" id="tags">
												<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- PRODUCT_DESCREIPTION END-->
							<!-- FEATURED-PRODUCT-AREA START-->
							<div class="row">
								<div class="featured-product-area">
									<h3 class="area-heading">Related products</h3>
									<div class="featured-product-corusol">
										<div class="col-lg-4 col-md-4">
											<!--SINGLE-FEATURED-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="#">
														<img src="content\img\product\fetured\fetured_1.jpg" alt="Special" class="primary-image">
														<img src="content\img\product\fetured\fetured_2.jpg" alt="Special" class="secondary-image">
													</a>
													<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
														<span class="quick-view">
															<i class="fa fa-external-link"></i>Quick view
														</span>
													</a>													
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del"><del>$132.00</del></span>
														</div>
														<div class="wish">
															<a href="#">
																<span class="cart">
																	<i class="fa fa-shopping-cart"></i>
																</span>
															</a>
															<a href="#">
																<span class="heart">
																	<i class="fa fa-heart-o"></i>
																</span>
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
										<div class="col-lg-4 col-md-4">
											<!--SINGLE-FEATURED-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="#">
														<img src="content\img\product\fetured\fetured_2.jpg" alt="Special" class="primary-image">
														<img src="content\img\product\fetured\fetured_1.jpg" alt="Special" class="secondary-image">
													</a>
													<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
														<span class="quick-view">
															<i class="fa fa-external-link"></i>Quick view
														</span>
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del"><del>$132.00</del></span>
														</div>
														<div class="wish">
															<a href="#">
																<span class="cart">
																	<i class="fa fa-shopping-cart"></i>
																</span>
															</a>
															<a href="#">
																<span class="heart">
																	<i class="fa fa-heart-o"></i>
																</span>
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
										<div class="col-lg-4 col-md-4">
											<!--SINGLE-FEATURED-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="#">
														<img src="content\img\product\fetured\fetured_3.jpg" alt="Special" class="primary-image">
														<img src="content\img\product\fetured\fetured_1.jpg" alt="Special" class="secondary-image">
													</a>
													<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
														<span class="quick-view">
															<i class="fa fa-external-link"></i>Quick view
														</span>
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del"><del>$132.00</del></span>
														</div>
														<div class="wish">
															<a href="#">
																<span class="cart">
																	<i class="fa fa-shopping-cart"></i>
																</span>
															</a>
															<a href="#">
																<span class="heart">
																	<i class="fa fa-heart-o"></i>
																</span>
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
										<div class="col-lg-4 col-md-4">
											<!--SINGLE-FEATURED-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="#">
														<img src="content\img\product\fetured\fetured.jpg" alt="Special" class="primary-image">
														<img src="content\img\product\fetured\fetured_3.jpg" alt="Special" class="secondary-image">
													</a>
													<a class="modal-view" href="#" data-toggle="modal" data-target="#productModal">
														<span class="quick-view">
															<i class="fa fa-external-link"></i>Quick view
														</span>
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del"><del>$132.00</del></span>
														</div>
														<div class="wish">
															<a href="#">
																<span class="cart">
																	<i class="fa fa-shopping-cart"></i>
																</span>
															</a>
															<a href="#">
																<span class="heart">
																	<i class="fa fa-heart-o"></i>
																</span>
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
								</div>
									<!--FEATURED-PRODUCT-AREA END-->
							</div>							
						</div>
						<div class="col-lg-3 col-md-3">
							<div class="row">
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
							<!-- OFFER_AREA START-->
								<div class="col-lg-12 col-md-12 hidden-sm">
									<!-- OFFER_AREA START-->
									<div class="offer_area">
										<div class="offer_img">
											<img src="content\img\offer-img.jpg" alt="Offer">
											<div class="offer-text">
												<h2>Sale</h2>
												<p>up to</p>
												<h2 class="amout">30</h2>
											</div>
										</div>
									</div>
									<!-- OFFER_AREA END-->
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
												<li><a href="#" class="tag_active">creative</a></li>
												<li><a href="#">ecommerce</a></li>
												<li><a href="#">elegant</a></li>
												<li><a href="#">fashion</a></li>
												<li><a href="#">minimal</a></li>
											</ul>
										</div>
									</div>
									<!-- POPULAR-TAGS END-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
</asp:Content>
