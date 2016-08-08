<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="eshop.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="maincontain-area">
        <div class="container">
            <div class="row">
                <div class="maincontain">
                    <div class="col-lg-3 col-md-3">
                        <div class="row">
                            <!-- BLOG CATEGORIES START-->
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <%--<h2 class="category-heding">Blog categories</h2>
									<div class="manufacturers-color-menu">
										<nav>
											<ul>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Blog categories</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>With both sidebars</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Blog with right sidebars</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>Blog with left sidebars</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>With two right sidebar</a></li>
												<li><a href="#"><i class="fa fa-arrow-right"></i>With two left sidebar</a></li>
											</ul>
										</nav>
									</div>--%>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="row">
                            <!-- BLOAG_MAIN_AREA START-->
                            <div class="bloag_main_area">
                                <!-- BLOG-DETAILS START-->
                                <div class="col-lg-12 col-md-12">
                                    <div class="single-blog">
                                        <div class="blog-img">
                                            <a href="#">
                                                <img src="content\img\blog\blog_3.jpg" alt="Blog"></a>
                                        </div>
                                        <%--<div class="blog-text-area">
												<div class="date">
													<span>09</span>
													<span class="month">Sept 2015</span>
												</div>
												<div class="block-desc">
													<a href="#">
														<h3>Aliquam sed libero neque. Duis ut finibus dui. Sed egestas elit tortor, vel volutpat </h3>
													</a>
													<div class="comment-area">
														<a href="#">
															<span class="author"><i class="fa fa-user"></i>Authur</span>
														</a>
														<a href="#">
															<span class="comment"><i class="fa fa-comments"></i>12 Comments</span>
														</a>
													</div>
												</div>
											</div>--%>
                                        <div class="description_details">
                                            <h3><b>Hakkımızda</b></h3>

                                            Teknoloji alanında 1990 yılından bu güne edindiğimiz tüm tecrübe ve birikimi siz müşterilerimizle daha fazla paylaşabilmek için 2016 yılında www.MS-YAZ-10.com Trendi A.Ş. isimli şirketimiz kurulmuştur. En başta müşteri memnuniyetini en üst noktada tutmayı bir yaşam ilkesi olarak gören Trendi diğer en büyük özelliğimiz ucuz fiyat politikası ile hizmet ve fiyat avantajını bir arada toplamak ve 25 yıllık tecrübemizi siz müşterilerimizle buluşturmayı amaçlamaktır.
                                            <br>
                                            <br>
                                            MS-YAZ-10.com olarak bir şirketin geleceğinin siz müşterilerimizin elinde olduğunun bilincindeyiz. Bu nedenle müşteri memnuniyetini en önemli etken olarak düşünmekteyiz. Hizlial.com'un sunduğu kaliteli ürünler ve hizmetler ile müşterilerimiz için yeni bir gelecek yaratmakta, yaşam tecrübesini iyileştirmeye çalışmaktayız.
                                            <br>
                                            <br>
                                            Türkiye'yi güvenli ve hızlı e-ticaret ile buluşturuyoruz.
                                            <br>
                                            <br>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                                <!-- BLOG-DETAILS END-->
                            </div>
                            <!-- BLOAG_MAIN_AREA END-->



                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="col-lg-12 col-md-12 col-sm-6 pad-left">
                            <%--<div class="offer_area">
                                <div class="offer_img">
                                    <img alt="Offer" src="content\img\offer-img.jpg">
                                    <div class="offer-text">
                                        <h2>Sale</h2>
                                        <p>up to</p>
                                        <h2 class="amout">30</h2>
                                    </div>
                                </div>
                                <div class="news-letter">
                                    <h2>send newsletter</h2>

                                    <span class="input-box">
                                        <i class="fa fa-envelope"></i>
                                        <input type="text" placeholder="Email" name="Email">
                                    </span>
                                    <input type="button" value="Send">
                                </div>
                            </div>--%>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6 pad-left">
                            <div class="popular-tags">
                                <h2 class="recent-post-heding">Popular tags</h2>
                                <div class="tags">
                                    <ul>
                                        <li><a href="#">Bershka</a></li>
                                        <li><a href="#">Collezione</a></li>
                                        <li><a href="#">Beymen Club</a></li>
                                        <li><a href="#">Forever New</a></li>
                                        <li><a href="#">H&M</a></li>
                                        <li><a href="#">Nine West</a></li>
                                        <li><a href="#">Bonprix</a></li>
                                        <li><a href="#">Bambi</a></li>
                                        <li><a href="#">Avon</a></li>
                                        <li><a href="#">Derimod</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
