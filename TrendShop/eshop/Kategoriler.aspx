<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="eshop.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
	
		<!--MENU-BOTTOM START-->
		<div class="menu-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-lg-12">
						<div class="category-gird-menu">
							<nav>
								<ul>
        <asp:Repeater ID="repeaterMenu" runat="server"> 
            <ItemTemplate>
									<li><a href="Default.aspx"><i class="fa fa-home"></i>Anasayfa</a></li>
									<li><a class="active-current" href="Kategoriler.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=0""><%# Eval("KategoriAd") %></a></li>
                <li><a class="active-current" href="Kategoriler.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>"><%# Eval("AltKategoriAd") %></a></li>
                <li><a class="active-current" href="Kategoriler.aspx?akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>"><%# Eval("AltAltKategoriAdi") %></a></li>
		</ItemTemplate>	</asp:Repeater>					
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
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
									</li>
							</ItemTemplate>		
                            </asp:Repeater>
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
									<h2 class="category-heding">Alt Kategoriler</h2>
									<div class="manufacturers-color-menu">
										<nav>
											<ul>
                                                <asp:Repeater ID="Repeater2" runat="server">
                                                    <ItemTemplate>
												<li>
                                                    <a href="Kategoriler.aspx?akno=<%#Eval("AltKategoriNo")%>&aakno=<%#Eval("AltAltKategoriId")%>"><i class="fa fa-arrow-right"></i><%#Eval("AltAltKategoriAdi")%></a>
                                                </li>
                                                    </ItemTemplate> 
                                                 </asp:Repeater>
												<%--<li><a href="#"><i class="fa fa-arrow-right"></i>Duis tempus id</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Leo quis molestie.</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Suspendisse</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Nunc gravida</a></li>--%>
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
						</div>
					</div>			
					<div class="col-lg-9 col-md-9">
						<!-- CATEGORY-BANNER START-->
						<div class="category-banner">
							<img src="content\img\category_banner.jpg" alt="">
						</div>
						<!-- CATEGORY-BANNER END-->
						<!-- GIRD CATEGORY-FORM START-->
						<div class="category-form">
							<div class="col-lg-3 col-md-3 col-sm-3">
								<!-- GIRD-AND-LIST-MENU START-->
								<div class="gird-and-list-menu">
									<nav>
										<ul>
											<li><a href="KategorilerListe.aspx"><i class="fa fa-th-list"></i></a></li>
											<li><a href="Kategoriler.aspx" class="gird-active-color"><i class="fa fa-th-large"></i></a></li>
										</ul>
									</nav>
								</div>
								<!-- GIRD-AND-LIST-MENU END-->
							</div>
							<!-- FORM-AREA START-->
							<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
								<div class="form-area">
									<div class="sort-by">
							
										<%--<select name="secim" id="secim" onclick="Secim_olay" runat="server">
											<option value="">Artan Fiyata Göre</option>
											<option value="">Azalan Fiyata Göre</option>
										</select>--%>
                                        
                                        <asp:DropDownList ID="ddlSiralama" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSiralama_SelectedIndexChanged" >
                                            <asp:ListItem Text="Artan Fiyata Göre" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Azalan Fiyata Göre" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
									</div>
									<div class="show-value">
										<%--Show
										t name="show">
											e="16">16
											n value="15">15
										</select>
										Per Page--%>
									</div>
								</div>
							</div>
							<!-- FORM-AREA END-->
						</div>
						<!-- GIRD CATEGORY-FORM END-->	
						<!--CATEGORY PRODUCT GIRD START-->
                        
						<div class="row"> 
							<div class="category-gird-product-area">
                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                    <ItemTemplate>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                     
									<!--SINGLE-FEATURED-PRODUCT START-->
									<div class="single-featured-product">
                                        
										<div class="product_img">
											<a href="UrunDetayWebForm.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>&ukodu=<%# Eval("UrunKodu") %>&uid=<%# Eval("UrunId") %>" > 
												<img src="<%#Eval("UrunResim1")%>" alt="Special" class="primary-image">
												<img src="<%#Eval("UrunResim2")%>" alt="Special" class="secondary-image">
											</a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="modal-view" href="UrunDetayWebForm.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>&ukodu=<%# Eval("UrunKodu") %>&uid=<%# Eval("UrunId") %>"><span class="quick-view"><i class="fa fa-external-link"></i>Detay
												</span>
											</a>
											<div class="add-cart-area">
												<div class="fet-price">
													<span class="addcart-text"><%#Eval("UrunFiyat")%>TL</span>
												</div>
												<div class="wish">
													<a href="Sepet.aspx" class="shopping-cart">
														<i class="fa fa-shopping-cart"></i>
													</a>
													<a href="#" class="favourite">
														<i class="fa fa-heart-o"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="infor-text">
											<a href="Kategoriler.aspx"></span></a>
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
                                    </ItemTemplate>
                                           </asp:Repeater>
 </div>							
							<!--CATEGORY PRODUCT-AREA END-->
						</div>
						<!--CATEGORY PRODUCT GIRD END-->
						<!--PGAINATION AREA START-->
						<div class="row">
							<div class="col-lg-12 col-md-12">
								<div class="pagination-area">
									<ul class="pagination">
										<li><a href="#">1<li><a href="#" class="active_p">2</a></li>
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
</asp:Content>
