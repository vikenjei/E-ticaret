<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eshop.Default" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="slider-and-category">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
					<!-- SAID-BAR START -->
						<div class="side-bar"> 
							<h2><i class="fa fa-align-justify"></i>Kategoriler</h2>
							<nav>
								<ul>
                            <asp:Repeater ID="repKat" runat="server" OnItemDataBound="repKat_ItemDataBound"> 
                                 <ItemTemplate>
                                     <asp:Label ID="lblId" runat="server" Text='<%#Eval("KategoriId") %>' Visible="false" />
                                        <li><a href="Kategoriler.aspx?kno=<%#Eval("KategoriId") %>&akno=0"><span><i class="fa fa-female"></i></span><%#Eval("KategoriAd") %> <span class="right-icon"><i class="fa fa-arrow-circle-o-right"></i></span></a>
										<div class="category-mega-menu">
											<span class="menu-text">					
                                                	<asp:Repeater ID="repAltKat" runat="server"> <ItemTemplate>	
												<a href="Kategoriler.aspx?kno=<%#Eval("KategoriNo") %>&akno=<%#Eval("AltKategoriId")%>" > <%#Eval("AltKategoriAd")%></a>
                                                    </ItemTemplate>  
                                            	</asp:Repeater>
											</span>
											<span>
												<img src="<%#Eval("KategoriKucukResim")%>" alt="Mens">
											</span>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</li>
							</ItemTemplate>		
                            </asp:Repeater>
            </ul>
							</nav>
						</div>
						<!-- SAID-BAR END -->
					</div>			
					<div class="col-lg-9 col-md-9">
					<!-- SLIDER_AREA START-->
					<div class="slider-area" id="container">
						<div class="bend niceties preview-2">
							<div id="ensign-nivoslider" class="slides">
                                <asp:Repeater ID="repeaterSlaytResim" runat="server">
                                    <ItemTemplate>
								<img src="<%#Eval("SlaytResimYolu") %>" alt="" title="#<%# Eval("SlaytId") %>" />
                                </ItemTemplate>   
                                 </asp:Repeater>
								<%--<img src="content\img\slider\slider2.jpg" alt="" title="#slider-direction-2">--%>
							</div>
							<!-- direction 1 -->
                            <asp:Repeater ID="repeaterSlaytIcerik" runat="server"> 
                                <ItemTemplate>
							<div id="<%# Eval("SlaytId") %>" class="t-cn slider-direction">
								<div class="slider-progress"></div>
								<div class="slider-content t-cn s-tb slider-1">
									<div class="title-container s-tb-c title-compress">
										<p class="offer"><%# Eval("SlaytUstYazi") %></p>
										<h1 class="animated bounceInDown title1"><%# Eval("SlaytOrtaYazi") %></h1>
										<p class="description"><%# Eval("SlaytAltYazi") %></p>
										<a href="Kategoriler.aspx" class="link-st"><span>Alışverişe Başla</span></a>
									</div>
								</div>	
							</div>
                                </ItemTemplate> 
                            </asp:Repeater>
							<!-- direction 2 -->
							<%--<div id="<%# Eval("SlaytId") %>" class="t-cn slider-direction">
								<div class="slider-progress"></div>
								<div class="slider-content t-cn s-tb slider-1">
									<div class="title-container s-tb-c title-compress">
										<p class="offer">%50'ye varan indirimlermated bounceInDown title1">el çantaları<br>Erkekler için</h1>
										<p class="description">Fusce ac consectetur neque, nec pharetra dolor. Aenean metus <br>mauris, facilisis vel leo non, ornare pretium eros.</p>
										<a href="#" class="link-st"><span>Shop Now</span></a>
									</div>
								</div>	
							</div>
						</div>--%>
					</div>
					<!-- SLIDER_AREA END-->
					</div>					
				</div>
			</div>
		</div>
    <!-- MAINCONTAIN-AREA START-->
		<div class="maincontain-area">
			<div class="container">
				<div class="row">
					<div class="maincontain">
						<div class="col-lg-3 col-md-3">
						<div class="row">
								<div class="col-lg-12 col-md-12">
								<!-- BEST-PRODUCT START-->
									<div class="best-product">
										<h3 class="area-heading">Bugün</h3>
										<!-- BESTSELLER-PRODUCT-ALL START-->
										<div class="best-product-all">
										<!-- SINGLE-BESTSELLER-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="product_details.htm">
														<img src="content\img\best_sale.jpg" alt="Special" class="primary-image">
														<img src="content\img\special_product.jpg" alt="Special" class="secondary-image">
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del">$132.00</span>
														</div>
														<div class="wish">
															<a class="shopping-cart" href="#">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a class="favourite" href="#">
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
											<!-- SINGLE-BESTSELLER-PRODUCT END-->
											<!-- SINGLE-BESTSELLER-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="product_details.htm">
														<img src="content\img\best_sale.jpg" alt="Special" class="primary-image">
														<img src="content\img\special_product.jpg" alt="Special" class="secondary-image">
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del">$132.00</span>
														</div>
														<div class="wish">
															<a class="shopping-cart" href="#">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a class="favourite" href="#">
																<i class="fa fa-heart-o"></i>
															</a>
														</div>
													</div>
												</div>
												<!-- INFOR-TEXT START-->
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
												<!-- INFOR-TEXT END-->
											</div>
											<!-- SINGLE-BESTSELLER-PRODUCT END-->
											<!-- SINGLE-BESTSELLER-PRODUCT START-->
											<div class="single-featured-product">
												<div class="product_img">
													<a href="product_details.htm">
														<img src="content\img\best_sale.jpg" alt="Special" class="primary-image">
														<img src="content\img\special_product.jpg" alt="Special" class="secondary-image">
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text">$120.00</span>
															<span class="addcart-text-del">$132.00</span>
														</div>
														<div class="wish">
															<a class="shopping-cart" href="#">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a class="favourite" href="#">
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
											<!-- SINGLE-BESTSELLER-PRODUCT END-->
										</div>
										<!-- BESTSELLER-PRODUCT-ALL END-->
									</div>
									<!-- BEST-PRODUCT END-->
								</div>
							</div>
							<div class="row">
								<div class="col-lg-12 col-md-12">
								<!-- SPECIAL-PRODUCT START -->
									<div class="special-product">
										<h3 class="area-heading">Özel</h3>
										<!-- SPECIAL-PRODUCT-ALL START-->
										<div class="special-product-all">
										<!-- SINGLE-SPECIAL-PRODUCT START-->
											<div class="single-special-product">
												<a href="product_details.htm">
													<div class="product_img">
														<img src="content\img\special_product.jpg" alt="Special">
													</div>
												</a>
												<div id="defaultCountdown"></div>
												<div class="addtocart_area">
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
											<!-- SINGLE-SPECIAL-PRODUCT END-->
											<!-- SINGLE-SPECIAL-PRODUCT START-->
											<div class="single-special-product">
												<a href="product_details.htm">
													<div class="product_img">
														<img src="content\img\special_product.jpg" alt="Special">
													</div>
												</a>
												<div id="defaultCountdown2"></div>
												<div class="addtocart_area">
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
												<div class="infor-text">
													<a href="product_details.htm">
														<span>Vestibulum et mollis nunc</span>
													</a>
													<span class="star">
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</span>
												</div>
											</div>
											<!-- SINGLE-SPECIAL-PRODUCT END-->
											<!-- SINGLE-SPECIAL-PRODUCT START-->
											<div class="single-special-product">
												<a href="product_details.htm">
													<div class="product_img">
														<img src="content\img\special_product.jpg" alt="Special">
													</div>
												</a>
												<div id="defaultCountdown3"></div>
												<div class="addtocart_area">
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
											<!-- SINGLE-SPECIAL-PRODUCT END-->
										</div>
										<!-- SPECIAL-PRODUCT-ALL END-->
									</div>
									<!-- SPECIAL-PRODUCT END -->
								</div>
							</div>
							<!-- Special Product End -->
							<!-- OFFER_AREA START-->
							<%--<div class="row">
								<div class="col-lg-12 col-md-12">
									<!-- OFFER_AREA START-->
									<div class="offer_area">
										<div class="offer_img">
											<img src="content\img\offer-img.jpg" alt="Offer">
											<div class="offer-text">
												<h2>Sezona</h2>
												<p>İndirim</p>
												<h2 class="amout">%30</h2>
											</div>
										</div>
										<div class="news-letter">
											<h2>send newsletter</h2>
											<form action="#">
												<span class="input-box">
													<i class="fa fa-envelope"></i><input type="text" name="Email" placeholder="Email">
												</span>
												<input type="button" value="Send">
											</form>
										</div>
									</div>
									<!-- OFFER_AREA END-->
								</div>
							</div>--%>
						</div>
						<div class="col-lg-9 col-md-9">
							<!--FEATURED PRODUCT START-->
							<div class="row">
								<!--FEATURED-PRODUCT-AREA START-->
								<div class="featured-product-area">
									<h3 class="area-heading">Çok Satanlar</h3>
                                
                         
                                    <div class="featured-product-corusol">
                                         <asp:Repeater ID="Repeater1" runat="server">
                                                    <ItemTemplate>
										<div class="col-lg-4 col-md-4">
                                               
											<!--SINGLE-FEATURED-PRODUCT START-->
                                            <div class="single-featured-product">
                                            
												<div class="product_img">
                                                    
													<a href="UrunDetayWebForm.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>&ukodu=<%# Eval("UrunKodu") %>&uid=<%# Eval("UrunId") %>">
														<img src="<%#Eval("UrunResim1") %>" alt="Special" class="primary-image">
														<img src="<%#Eval("UrunResim2") %>" alt="Special" class="secondary-image">
													</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="modal-view" href="UrunDetayWebForm.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>&ukodu=<%# Eval("UrunKodu") %>&uid=<%# Eval("UrunId") %>"><span class="quick-view"><i class="fa fa-external-link"></i>Detay
														</span>
													</a>
													<div class="add-cart-area">
														<div class="fet-price">
															<span class="addcart-text"><%# Eval("UrunFiyat") %> TL</span>
															<%--<span class="addcart-text-del"><%# Eval("KategoriAd") %></span>--%>
														</div>
														<div class="wish">
                                                            <a href="UrunDetayWebForm.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>&ukodu=<%# Eval("UrunKodu") %>&uid=<%# Eval("UrunId") %>" class="shopping-cart">
															<i class="fa fa-shopping-cart"></i>
														</a>
															<a href="#" class="favourite">
																<i class="fa fa-heart-o"></i>
															</a>
														</div>
													</div>
												</div>
                                                
                                          
												<div class="infor-text">
													<a href="product_details.htm"><span><%# Eval("UrunAd") %></span></a>
													<span class="star">
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
													</span>
												</div>

											</div>   
											<!--SINGLE-FEATURED-PRODUCT END-->
										</div>  
                                              </ItemTemplate></asp:Repeater>
										</div>
										
                                                       
                                           
                                            
											<!--SINGLE-FEATURED-PRODUCT END-->
										</div>
									
								</div>
								<!--FEATURED-PRODUCT-AREA END-->
							</div>
							<!--Featured Product End-->
							
							<!-- ADD-AREA START-->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="add-area">
										<div class="add-img">
											<img src="content\img\add_mans.jpg" alt="Mans">
										</div>
										<div class="add-discription">
											<p>Sizin İçin En İyiler</p>
											<h2>Erkek Koleksiyonları</h2>
											<a href="#">Tıklayın</a>
										</div>
									</div>
								</div>
							</div>
							<!-- ADD-AREA END-->
							
							<%--<!-- TOP-CATEGORY-AREA START-->
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="top-category-area">
										<h3 class="area-heading">Top categories</h3>
										<!-- TOP-CATEGORY-MENU START-->
										<div class="top-category-menu">
										<a href="category_grid.htm">
											<div>
												<i class="fa fa-female"></i>
												<p>Women</p>
											</div>
										</a>
										<a href="category_grid.htm">
											<div>
												<i class="fa fa-male"></i>
												<p>Men</p>
											</div>
										</a>
										<a href="category_grid.htm">
											<div>
												<i class="fa fa-suitcase"></i>
												<p>Bags</p>
											</div>
										</a>
										<a href="category_grid.htm">
											<div>
												<i class="fa fa-video-camera"></i>
												<p>Digital Camera</p>
											</div>
										</a>
										<a href="category_grid.htm">
											<div>
												<i class="fa fa-apple"></i>
												<p>Mobile Phone</p>
											</div>
										</a>
										</div>
										<!-- TOP-CATEGORY-MENU END-->
									</div>
								</div>
							</div>
							<!-- TOP-CATEGORY-AREA END-->--%>
							
							<!-- TOP-CATEGORY-PRODUCT-AREA START-->
							<div class="row">
								<div class="top-category-product-area">								
									<!-- TOP-CATEGORY-SINGLE-PRODUCT START-->
									<div class="col-lg-4 col-md-4 col-sm-4">
										<div class="single-featured-product">
											<div class="product_img">
												<a href="category_grid.htm">
													<img src="content\img\product\topcategories\category_pic_1.jpg" alt="Category" class="primary-image">
													<img src="content\img\product\topcategories\category_pic_3.jpg" alt="Category" class="secondary-image">
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
											
										</div>
									</div>
									<!-- TOP-CATEGORY-SINGLE-PRODUCT END-->
									
									<!-- TOP-CATEGORY-SINGLE-PRODUCT START-->
									<div class="col-lg-4 col-md-4 col-sm-4">
										<div class="single-featured-product">
											<div class="product_img">
												<a href="category_grid.htm">
													<img src="content\img\product\topcategories\category_pic_2.jpg" alt="Category" class="primary-image">
													<img src="content\img\product\topcategories\category_pic_1.jpg" alt="Category" class="secondary-image">
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
												<a href="category_grid.htm"><span>Vestibulum et mollis nunc</span></a>
												<span class="star">
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</span>
											</div>
										</div>
									</div>
									<!-- TOP-CATEGORY-SINGLE-PRODUCT END-->
									
									<!-- TOP-CATEGORY-SINGLE-PRODUCT START-->
									<div class="col-lg-4 col-md-4 col-sm-4">
										<div class="single-featured-product">
											<div class="product_img">
												<a href="category_grid.htm">
													<img src="content\img\product\topcategories\category_pic_3.jpg" alt="Category" class="primary-image">
													<img src="content\img\product\topcategories\category_pic_1.jpg" alt="Category" class="secondary-image">
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
												<a href="category_grid.htm"><span>Vestibulum et mollis nunc</span></a>
												<span class="star">
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</span>
											</div>
										</div>
									</div>
									<!-- TOP-CATEGORY-SINGLE-PRODUCT END-->
								</div>
								<!-- TOP-CATEGORY-PRODUCT-AREA END-->
							</div>
							<!-- TOP-CATEGORY-PRODUCT-AREA END-->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- MAINCONTAIN-AREA END-->
</asp:Content>
