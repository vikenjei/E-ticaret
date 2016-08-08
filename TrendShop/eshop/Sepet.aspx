<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="eshop.Sepet" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- CART_LIST_AREA START-->
		<div class="cart_list_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="single_cart_list table-responsive">
							<table class="table"> 
								<tr>
									<th class="delete_icon"></th>
									<th class="c_prod_images">Resim</th>
									<th class="c_prod_name">Ürün Adı</th>
									<th class="c_edit_button"></th>
									<th class="c_qnt">Adet</th>
									<th class="sub_total">Ürün Fiyatı</th>
									<th class="grand_total">Tutar</th>
								</tr>
                                <asp:Repeater ID="repeaterSepetUrun" runat="server" OnItemCommand="repeaterSepetUrun_ItemCommand"><ItemTemplate>
                                <tr>
									<td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" class="fa fa-trash-o" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"sepetID") %>'></asp:LinkButton></td>
									<td><img src="<%# DataBinder.Eval(Container.DataItem,"urunResim") %>" alt="Cart" /></td>
									<td>
										<p class="prod_name"><a href="UrunDetayWebForm.aspx?kno=<%# DataBinder.Eval(Container.DataItem,"urunKategoriNo")%>&akno=<%# DataBinder.Eval(Container.DataItem,"urunAltKategoriNo")%>&aakno=<%# DataBinder.Eval(Container.DataItem,"urunAltAltKategoriNo")%>&ukodu=<%# Eval("urunKodu") %>&uid=<%# DataBinder.Eval(Container.DataItem,"urunID") %>"><%# DataBinder.Eval(Container.DataItem,"urunAd") %></a></p><p>Beden: <%# DataBinder.Eval(Container.DataItem,"urunBeden") %></p><p>Renk: <%# DataBinder.Eval(Container.DataItem,"urunRenk") %></p>
									</td>
									<td><a href="#"></a></td>
									<td><span class="cart_price"><%# DataBinder.Eval(Container.DataItem,"urunAdet") %></span></td>
									<td><span class="cart_price"><%# DataBinder.Eval(Container.DataItem,"urunFiyat") %>TL</span></td>
									<td><span class="cart_price"><%# DataBinder.Eval(Container.DataItem,"urunTutar") %>TL</span></td>
								</tr>
                                    </ItemTemplate></asp:Repeater>
								<%--<tr>
									<td><a href="#"><i class="fa fa-trash-o"></i></a></td>
									<td><img src="img/cart_list_2.jpg" alt="Cart" /></td>
									<td>
										<p class="prod_name"><a href="#">Et harum quidem rerum</a></p><p>Size: 42</p><p>Color: Red</p>
									</td>
									<td><a href="#">Edit</a></td>
									<td><input type="number" name="number" value="1"/></td>
									<td><span class="cart_price">$69.00</span></td>
									<td><span class="cart_price">$69.00</span></td>
								</tr>--%>
							</table>
						</div>
					</div>
				</div>
                <div class="client_request_area">
                    <asp:Label ID="lblHata" Visible="false" runat="server" Text="Label"></asp:Label>
		</div>
				<div class="total_subtotal_area">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="total_subtotal">
								<div class="total_subtotal_amount">
									<div class="subtotal">
										<span>Toplam Adet:</span>
										<span class="amount">
                                            <asp:Label ID="lblToplamAdet" runat="server" Text="Label"></asp:Label></span>
									</div>
									<div class="total">
										<span>Toplam Tutar:</span>
										<span class="amount">
                                            <asp:Label ID="lblToplamTutar" runat="server" Text="Label"></asp:Label></span>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CART_LIST_AREA END-->
		
		<!-- CLIENT_REQUEST_AREA START-->
		<div class="client_request_area">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-6">
						
					</div>
					<div class="col-lg-4 col-md-4 hidden-sm">
					    
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="button_area">
							<asp:LinkButton ID="lbOnay" runat="server" class="button" OnClick="lbOnay_Click">SİPARİŞİ ONAYLA</asp:LinkButton>
							<br />
							<a class="button" href="Kategoriler.aspx">ALIŞVERİŞE DEVAM</a>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CLIENT_REQUEST_AREA END-->
</asp:Content>
