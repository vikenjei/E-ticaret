<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="eshop.iletisim1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="maincontain-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <!-- CONTACT_INFO START-->
                    <div class="contact_info">
                        <div class="contact_text">
                            <h2>İletişim</h2>
                            <p>İnternette güvenli alışverişin adresi</p>
                        </div>
                        <div class="contact_social_media">
                            <ul>
                                <li>
                                    <span class="contact_icon"><i class="fa fa-envelope"></i></span>
                                    <span class="social_text">E-mail: info@wissenakademie.com</span>
                                </li>
                                <li>
                                    <span class="contact_icon"><i class="fa fa-phone"></i></span>
                                    <span class="social_text">Phone: 0212 765-4321</span>
                                </li>
                                <li>
                                    <span class="contact_icon"><i class="fa fa-map-marker"></i></span>
                                    <span class="social_text">Adres: Barbaros Bulvarı Yıldız İş Hanı No :9 Kat :3 34353 Beşiktaş - İstanbul</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- CONTACT_INFO END-->
                </div>
            </div>
            <!-- MAP_COMMENT_AREA START-->
            <div class="map_comment_area">
                <div class="row">
                    <!-- MAP START-->
                    <div class="col-lg-6 col-md-6">
                        <div class="contact-map">
                            <div id="googleMap" style="width: 100%; height: 360px;"></div>
                        </div>
                    </div>
                    <!-- MAP END-->
                    <!-- COMMENT_FORM START-->
                    <div class="col-lg-6 col-md-6">
                        <h2 class="heading_comments">Bize Yazın</h2>
                        <div class="comment_form">
                           
                                <p>
                                    <label>Adınız(*)</label>
                                    <input type="text" name="your_name">
                                </p>
                                <p>
                                    <label>Email Adresi(*)</label>
                                    <input type="email" name="email">
                                </p>
                                <p>
                                    <textarea rows="3" placeholder="..." name="..."></textarea></p>
                                <div class="button_for_text">
                                    <button type="submit">Gönder</button>
                                </div>
                          
                        </div>
                    </div>
                    <!-- COMMENT_FORM END-->
                </div>
            </div>
            <!-- MAP_COMMENT_AREA END-->
        </div>
    </div>
    <!-- MAINCONTAIN-AREA END-->
</asp:Content>
