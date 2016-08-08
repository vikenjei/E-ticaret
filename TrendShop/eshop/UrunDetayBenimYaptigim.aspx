<%--@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="UrunDetay.aspx.cs" Inherits="eshop.UrunDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Website template by freewebsitetemplates.com -->

    <link href="Content/style.css" rel="stylesheet" />


	<div id="background">
		<div id="page">
			<div id="contents">
                <asp:Repeater ID="repeaterDetay" runat="server" OnItemDataBound="repeaterBedenler_ItemDataBound">
                    <ItemTemplate>
                         <asp:Label ID="lblBedenNo" runat="server" Text='<%#Eval("UrunBedenNo") %>' Visible="false" />
                         <asp:Label ID="lblRenkNo" runat="server" Text='<%#Eval("UrunRenkNo") %>' Visible="false" />
				<div id="product">
					<div class="section">
						<ul>
                            <li>
								<a href="product.html"><img src="<%# Eval("UrunResim1") %>" width="80"  alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.html"><img src="<%# Eval("UrunResim1") %>" width="80" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.html"><img src="<%# Eval("UrunResim1") %>"  width="80" alt="thumbnail"></a>
							</li>
							<li>
								<a href="product.html"><img src="<%# Eval("UrunResim1") %>" width="80"  alt="thumbnail"></a>
							</li>
							
						</ul>
						<div>
							<img src="<%# Eval("UrunResim1") %>" width="300" alt="view">
						</div>
					</div>
					<div class="section">
						<h2><span><%# Eval("UrunFiyat") %> TL</span><%# Eval("UrunAd") %></h2>
						<p>
                            <%# Eval("UrunAciklama") %>
   						</p>
						<form action="index.html" method="post">
                            <h3>Beden</h3>
							<select>
                                <asp:Repeater ID="repeaterBedenler" runat="server" >
                                    <ItemTemplate>
								<option><%# Eval("BedenAdi") %></option>
                                    </ItemTemplate> 
                                 </asp:Repeater>
							</select>
                            <h3>Renk</h3>
							<select>
                                <asp:Repeater ID="repeaterRenkler" runat="server">
                                    <ItemTemplate>
								<option><%# Eval("RenkAdi") %></option>
                               </ItemTemplate>
                                 </asp:Repeater>
							</select>
							<input type="submit" value="Sepete Ekle" class="btn-cart" id="ekle" >
                            
							<%--<input type="submit" value="İstek Listesine Ekle">
						</form>
					</div>
				</div>
                  </ItemTemplate>  
                </asp:Repeater>
				<div class="footer">
					<h4><span>Benzer Ürünler</span></h4>
					<ul class="items">
						<li>
							<a href="product.html"> <img src="Content/img/product/sarıBluz" alt="Img"><span>20tl</span> Hukbalahap Boots</a>
						</li>
						<li>
							<a href="product.html"> <img src="Content/img/product/sarıBluz" alt="Img"> <span>30tl</span> Hukbalahap Boots</a>
						</li>
						<li>
							<a href="product.html"> <img src="Content/img/product/sarıBluz" alt="Img"> <span>40tl</span> Hukbalahap Boots</a>
						</li>
						<li>
							<a href="product.html"> <img src="Content/img/product/sarıBluz" alt="Img"> <span>50tl</span> Hukbalahap Boots</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="footer">
				<div class="background">
					<div id="connect">
						<h5>Get Social With us!</h5>
						<ul>
							<li>
								<a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" class="facebook"></a>
							</li>
							<li>
								<a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" class="twitter"></a>
							</li>
							<li>
								<a href="http://www.freewebsitetemplates.com/go/googleplus/" target="_blank" class="linkin"></a>
							</li>
						</ul>
					</div>
					<ul class="navigation">
						<li>
							<h5>Mens</h5>
							<a href="mens.html">Sneakers</a> <a href="mens.html">Boots</a> <a href="mens.html">Winter socks</a> <a href="mens.html">Lace-ups</a>
						</li>
						<li>
							<h5>Womens</h5>
							<a href="womens.html">Sneakers</a> <a href="womens.html">Boots</a> <a href="womens.html">Winter socks</a> <a href="womens.html">Lace-ups</a>
						</li>
						<li class="latest">
							<h5>New Arrivals</h5>
							<a href="new.html">Cheverlyn Zespax</a> <a href="new.html">Alta Ulterior</a> <a href="new.html">Mikee</a> <a href="new.html">Jeeroks Copy</a>
						</li>
						<li class="latest">
							<h5>On Sale Items</h5>
							<a href="sale.html">Cheverlyn Zespax</a> <a href="sale.html">Alta Ulterior</a> <a href="sale.html">Mikee</a> <a href="sale.html">Jeeroks Copy</a>
						</li>
					</ul>
					<p class="footnote">
						&copy; Copyirght &copy; 2011. <a href="index.html">Company name</a> all rights reserved.
					</p>
				</div>
			</div>
		</div>
	</div>


</asp:Content>


usttekı menu yolu
<asp:Repeater ID="repeaterMenu" runat="server"> 
            <ItemTemplate>
									<li><a href="Default.aspx"><i class="fa fa-home"></i>Anasayfa</a></li>
									<li><a class="active-current" href="Kategoriler.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=0""><%# Eval("KategoriAd") %></a></li>
                <li><a class="active-current" href="Kategoriler.aspx?kno=<%#Eval("UrunKategoriNo") %>&akno=<%#Eval("UrunAltKategoriNo")%>"><%# Eval("AltKategoriAd") %></a></li>
                <li><a class="active-current" href="Kategoriler.aspx?akno=<%#Eval("UrunAltKategoriNo")%>&aakno=<%#Eval("UrunAltAltKategoriNo")%>"><%# Eval("AltAltKategoriAdi") %></a></li>
		</ItemTemplate>	</asp:Repeater>--%>