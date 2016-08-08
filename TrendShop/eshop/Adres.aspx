<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.Master" AutoEventWireup="true" CodeBehind="Adres.aspx.cs" Inherits="eshop.Odeme" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="menu-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div class="category-gird-menu">
                        <nav>
                            <ul>
                                <li><a href="index.htm"><i class="fa fa-home"></i>Home</a></li>
                                <li><a class="active-current" href="checkout.htm">Checkout</a></li>
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
                        <!-- CHECKOUT_METHOD_AREA START-->
                        <div class="checkout_method_area">
                            <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="check_out panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading actives">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">1 | Giriş </a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">

                                                <div class="panel-body">
                                                    <asp:Panel ID="pnluyelik" Visible="true" runat="server">
                                                        <div class="create_acc">
                                                            <h3 class="acc_heding">Uye ol</h3>
                                                            <div class="create_form">
                                                                <p></p>

                                                                <label>Email adresi</label>
                                                                <input type="email" name="email">
                                                                <div class="button_area_ch">
                                                                    <i class="fa fa-key"></i>

                                                                    <asp:LinkButton ID="lbuye" OnClick="lbuye_Click" runat="server">Üye Ol</asp:LinkButton>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="login_acc">
                                                            <h3 class="acc_heding">Giriş</h3>
                                                            <div class="login_form">

                                                                <p>
                                                                    <label>Email adresi</label>
                                                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                                                </p>
                                                                <p>
                                                                    <label>Şifre</label>
                                                                    <asp:TextBox ID="txtsifre" runat="server"></asp:TextBox>
                                                                </p>
                                                                <div class="button_for_text">
                                                                    <div class="button_area_ch">
                                                                        <i class="fa fa-user"></i>

                                                                        <asp:LinkButton ID="lbUyegiris" runat="server" OnClick="lbUyegiris_Click">Giris</asp:LinkButton>
                                                                    </div>
                                                                    <p><a href="#">Şifrenizi unuttunuz?</a></p>
                                                                </div>
                                                                <asp:Label ID="lblMesaj" Visible="false" runat="server" Text="Label"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </asp:Panel>
                                                </div>

                                            </div>
                                        </div>
                                        <asp:Panel ID="pnldevam" Visible="false" runat="server">

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">2 | Adres</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse2" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <div class="box">
                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="firstname">Ad</label>
                                                                        <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>

                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="lastname">Soyad</label>
                                                                        <asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /.row -->

                                                            <div class="row">
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="company">Cadde</label>
                                                                        <asp:TextBox ID="txtCadde" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="street">Sokak</label>
                                                                        <asp:TextBox ID="txtSokak" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- /.row -->

                                                            <div class="row">
                                                                <div class="col-sm-6 col-md-3">
                                                                    <div class="form-group">
                                                                        <label for="city">Mahalle</label>
                                                                        <asp:TextBox ID="txtMahalle" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6 col-md-3">
                                                                    <div class="form-group">
                                                                        <label for="zip">Posta Kodu</label>
                                                                        <asp:TextBox ID="txtPostaKodu" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6 col-md-3">
                                                                    <div class="form-group">
                                                                        <label for="state">İl</label>
                                                                        <asp:TextBox ID="txtIl" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6 col-md-3">
                                                                    <div class="form-group">
                                                                        <label for="country">İlçe</label>
                                                                        <asp:TextBox ID="txtIlce" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="phone">Telefon</label>
                                                                        <asp:TextBox ID="txtTelefon" TextMode="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <div class="form-group">
                                                                        <label for="email">Email</label>
                                                                        <asp:TextBox ID="txtemaill" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                            </div>



                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">3 | Kargo Bilgileri</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse3" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <div class="col-md-12" id="checkout">

                                                            <div class="box">

                                                                <div class="content">
                                                                    <div class="row">
                                                                        <div class="col-sm-6">
                                                                            <div class="box shipping-method">

                                                                                <h4><b>Yurtiçi Kargo</b></h4>

                                                                                <p>Ertesi Gün Teslim </p>
                                                                                <asp:RadioButton ID="rbUps" Text="Seç" runat="server" GroupName="1" />

                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="box shipping-method">

                                                                                <h4><b>Aras Kargo</b> </h4>

                                                                                <p>1 - 3 Gün İçinde Teslim</p>
                                                                                <asp:RadioButton ID="rbYurtİci" Text="Seç" runat="server" GroupName="1" />

                                                                            </div>
                                                                        </div>


                                                                    </div>
                                                                    <!-- /.row -->

                                                                </div>
                                                                <!-- /.content -->


                                                            </div>
                                                            <!-- /.box -->


                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">4 | Ödeme Yöntemi</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse4" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <div class="content">
                                                            <div class="row">

                                                                <div class="col-sm-6">
                                                                    <div class="box payment-method">

                                                                        <h4>Kredi Kartı ile Ödeme</h4>

                                                                        <p>VISA yada Mastercard </p>

                                                                        <div class="box-footer text-center">

                                                                            <asp:RadioButton ID="rbKrediKart" runat="server" GroupName="2" OnCheckedChanged="rbKrediKart_CheckedChanged" />
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-6">
                                                                    <div class="box payment-method">

                                                                        <h4>Havale</h4>

                                                                        <div class="box-footer text-center">

                                                                            <asp:RadioButton ID="rbNakit" runat="server" GroupName="2" OnCheckedChanged="rbNakit_CheckedChanged" />
                                                                            <div class="bank-account-detail">
                                                                                <div>IBAN: TR280006400000111110040927</div>

                                                                                İş Bankası, İstanbul Kurumsal Şube, Şube Kodu: 1111 Hesap No: 0040927
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <asp:Panel ID="pnlkredi" runat="server" Visible="False">
                                                                <div class="row">
                                                                    <div class="col-sm-6 col-md-3">
                                                                        <div class="form-group">
                                                                            <label for="city">Ad</label>
                                                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6 col-md-3">
                                                                        <div class="form-group">
                                                                            <label for="city">Soyad</label>
                                                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="city">Kart No</label>
                                                                            <asp:TextBox ID="txtKartNo" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6 col-md-3">
                                                                        <div class="form-group">
                                                                            <label for="city">Taksit Sayısı</label>
                                                                            <asp:TextBox ID="txtTSayisi" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-sm-6 col-md-3">
                                                                        <div class="form-group">
                                                                            <label for="city">Cvc No</label>
                                                                            <asp:TextBox ID="txtCvcNo" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6 col-md-3">
                                                                        <div class="form-group">
                                                                            <label for="city">Son Kullanım Tarihi</label>
                                                                            <asp:TextBox ID="txtSonTrhi" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- /.row -->

                                                            </asp:Panel>

                                                        </div>


                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">5 | Kullanıcı Sözleşmesi</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse5" class="panel-collapse collapse">
                                                    <div class="panel-body">

                                                        <table style="font-size: 12pt !important; font-family: helvetica, sans serif" border="0" >
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <p align="center"><strong>MESAFELİ SATIŞ SÖZLEŞMESİ</strong> </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong>MADDE 1- TARAFLAR </strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                1.1. SATICI:                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>Ünvanı: D-Market Elektronik Hizmetler ve Ticaret A.Ş.
                                                                                <br />
                                                                                Adresi: Mimar Sinan Mah. Karadeniz Caddesi No: 150 Sultanbeyli / İstanbul 
                                                                                <br />
                                                                                Telefon:            </strong><strong>0216 633 26 00                                      
                                                                                    <br />
                                                                                    Fax: 0216 592 65 28 
                                                                                    <br />
                                                                                    Müşteri Hizmetleri Telefon: 0850 252 40 00            </strong>
                                                                        </p>
                                                                        <p><strong>Mersis Numarası: 0265017991000011</strong> </p>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>1.2. ALICI:                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>Adı/Soyadı/Ünvanı: volkan gündoğan                         
                                                                                <br />
                                                                                Adresi : yeni çamlıca mahallesi acarlar sitesi b-6 blok kat 2 daire 4 ataşehir 34779 ATAŞEHİR İstanbul / Türkiye                         
                                                                                <br />
                                                                                Telefon: 5065917966                         
                                                                                <br />
                                                                                Email: vikenjei@gmail.com            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>MADDE 2- KONU                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong>İşbu sözleşmenin konusu, ALICI'nın </strong><strong>www.hepsiburada.com</strong> <strong>internet sitesinden elektronik ortamda siparişini yaptığı aşağıda nitelikleri ve satış fiyatı belirtilen ürünün satışı ve teslimi ile                          ilgili olarak 6502 sayılı Tüketicinin Korunması Hakkındaki Kanun hükümleri gereğince tarafların hak ve yükümlülüklerinin saptanmasıdır.                      </strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                MADDE 3- SÖZLEŞME KONUSU ÜRÜN, ÖDEME VE TESLİMATA İLİŞKİN BİLGİLER                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong>3.1- Sözleşme konusu mal veya hizmetin adı, adeti, KDV dahil satış fiyatı, ödeme şekli ve temel nitelikleri </strong></p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong></strong></p>
                                                                        <div align="center">
                                                                            <table style="border: 1px dashed #000000; font-size: 12pt !important; font-family: helvetica, sans serif" border="0" cellpadding="0" width="100%">
                                                                                <tbody>
                                                                                    <tr height="30px">
                                                                                        <td width="50%"><b>Ürün Adı ve Temel Nitelikleri</b></td>
                                                                                        <td width="5%"><b>Adet</b></td>
                                                                                        <td width="20%"><b>Satış Bedeli</b><br>
                                                                                            (KDV dahil toplam Türk Lirası) </td>
                                                                                        <td width="20%"><b>Vadeli Satış Bedeli</b><br>
                                                                                            (KDV dahil toplam)</td>
                                                                                    </tr>
                                                                                    <tr height="28px">
                                                                                        <td> </td>
                                                                                        <td>1</td>
                                                                                        <td> </td>
                                                                                        <td> </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                3.2- Ödeme Şekli :  Kredi Kartı ile Peşin İşlem (Tek Çekim)
                                                                                <br>
                                                                                <li>Yukarıdaki bölümde bankanıza iletilecek sipariş toplamının kaç taksitle ödeneceği bilgisi bulunmaktadır.</li>
                                                                                <li>Bankanız kampanyalar düzenleyerek sizin seçtiğiniz taksit adedinin daha üstünde bir taksit adedi uygulayabilir, taksit öteleme gibi hizmetler sunulabilir. Bu tür kampanyalar bankanızın inisiyatifindedir ve şirketimizin bilgisi dâhilinde olması durumunda sayfalarımızda kampanyalar hakkında bilgi verilmektedir.</li>
                                                                                <li>Kredi kartınızın hesap kesim tarihinden itibaren sipariş toplamı taksit adedine bölünerek kredi kartı özetinize bankanız tarafından yansıtılacaktır. Banka taksit tutarlarını küsurat farklarını dikkate alarak aylara eşit olarak dağıtmayabilir. Detaylı ödeme planınızın oluşturulması bankanız inisiyatifindedir.</li>
                                                                            </strong>
                                                                        </p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong></strong></p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                                3.3- Diğer yandan vadeli satışların sadece Bankalara ait kredi kartları ile yapılması nedeniyle, ALICI, ilgili faiz oranlarını ve                          temerrüt faizi ile ilgili bilgileri bankasından ayrıca teyit edeceğini, yürürlükte bulunan mevzuat hükümleri gereğince faiz ve temerrüt                          faizi ile ilgili hükümlerin Banka ve ALICI arasındaki kredi kartı sözleşmesi kapsamında uygulanacağını kabul, beyan ve taahhüt eder.                         
                                                                                <br />
                                                                                <br />
                                                                                İade Prosedürü:            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                                a) Kredi Kartına İade Prosedürü            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                                ALICI’nın cayma hakkını kullandığı durumlarda ya da siparişe konu olan ürünün çeşitli sebeplerle tedarik edilememesi veya hakem heyeti                          kararları ile ALICI’ya bedel iadesine karar verilen durumlarda, alışveriş kredi kartı ile ve taksitli olarak yapılmışsa, kredi kartına                          iade prosedürü aşağıda belirtilmiştir:                         
                                                                                <br />
                                                                                <br />
                                                                                ALICI ürünü kaç taksit ile aldıysa Banka ALICI’ya geri ödemesini taksitle yapmaktadır. SATICI bankaya ürün bedelinin tamamını tek                          seferde ödedikten sonra, Banka poslarından yapılan taksitli harcamaların ALICI’nın kredi kartına iadesi durumunda, konuya müdahil                          tarafların mağdur duruma düşmemesi için talep edilen iade tutarları, yine taksitli olarak hamil taraf hesaplarına Banka tarafından                          aktarılır. ALICI’nın satış iptaline kadar ödemiş olduğu taksit tutarları ,eğer iade tarihi ile kartın hesap kesim tarihleri çakışmazsa                          her ay karta 1 (bir) iade yansıyacak ve ALICI iade öncesinde ödemiş olduğu taksitleri satışın taksitleri bittikten sonra , iade                          öncesinde ödemiş olduğu taksitleri sayısı kadar ay daha alacak ve mevcut borçlarından düşmüş olacaktır.            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                                Kart ile alınmış mal ve hizmetin iadesi durumunda SATICI, Banka ile yapmış olduğu sözleşme gereği ALICI’ya nakit para ile ödeme                          yapamaz. Üye işyeri yani SATICI, bir iade işlemi sözkonusu olduğunda ilgili yazılım aracılığı ile iadesini yapacak olup, Üye işyeri                          yani SATICI ilgili tutarı Banka’ya nakden veya mahsuben ödemekle yükümlü olduğundan yukarıda anlatmış olduğumuz prosedür gereğince                          ALICI’ya nakit olarak ödeme yapılamamaktadır. Kredi kartına iade, SATICI’nın Banka’ya bedeli tek seferde ödemesinden sonra, Banka                          tarafından yukarıdaki prosedür gereğince yapılacaktır.                         
                                                                                <br />
                                                                                <br />
                                                                                ALICI, bu prosedürü okuduğunu ve kabul ettiğini kabul ve taahhüd eder.                         
                                                                                <br />
                                                                                <br />
                                                                                B) Kapıdan Ödeme ile Havale/EFT Ödeme Seçeneklerinde İade Prosedürü            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                                Kapıdan ödeme ile havale/EFT ödeme seçeneklerinde iade Tüketiciden banka hesap bilgileri istenerek,Tüketicinin belirttiği hesaba                          (hesabın fatura adresindeki kişinin adına veya kullanıcı üyenin adına olması şarttır) havale ve EFT şeklinde yapılacaktır.            </strong>
                                                                        </p>
                                                                        <p><strong></strong></p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                3.4- Teslimat Şekli ve Adresi :                         
                                                                                <br />
                                                                                Teslimat Adresi :                         
                                                                                <br />
                                                                                Teslim Edilecek Kişi:                    
                                                                                <br />
                                                                                Fatura Adresi :            </strong>
                                                                        </p>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                Paketleme, kargo ve teslim masrafları ALICI tarafından karşılanmaktadır. Kargo ücreti 0,00 -TL olup, kargo fiyatı sipariş                          toplam tutarına eklenmektedir. Ürün bedeline dahil değildir. Teslimat , anlaşmalı kargo şirketi aracılığı ile, ALICI'nın yukarıda                          belirtilen adresinde elden teslim edilecektir. Teslim anında ALICI'nın adresinde bulunmaması durumunda dahi Firmamız edimini tam ve                          eksiksiz olarak yerine getirmiş olarak kabul edilecektir. Bu nedenle, ALICI'nın ürünü geç teslim almasından ve/veya hiç teslim                          almamasından kaynaklanan zararlardan ve giderlerden SATICI sorumlu değildir. SATICI, sözleşme konusu ürünün sağlam, eksiksiz, siparişte                          belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım kılavuzları ile teslim edilmesinden sorumludur.            </strong>
                                                                        </p>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>
                                                                                <br />
                                                                                3.5. Hızlı ve Kolay Alışveriş: Siparişin onaylanması sonrasında, “MÜŞTERİ” sipariş onaylanma ekranında hızlı ve kolay alışveriş                          bölümünde MÜŞTERİ “ONAY” sekmesini tıklaması ve müşterinin sistemde kayıtlı cep telefonuna gelen SMS doğrulama aktivasyon kodunu, 180                          saniye içerisinde sitede yer alan ilgili bölüme girmesi halinde kargo firması, teslimat adresi, ödeme seçim ve bilgilerinin kendi                          onayıyla müşteri profil bilgileri altında kaydedilerek saklanmasını kabul eder. “MÜŞTERİ’NİN” rızası ile kaydedilen ilgili bilgiler                          müşterinin profil bilgileri altında saklanacak olup “MÜŞTERİ’NİN” talebi durumunda bu bilgiler istenildiğinde müşteri profilinden                          çıkartılır.            </strong>
                                                                        </p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong>MADDE 4- CAYMA HAKKI </strong></p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong></strong></p>
                                                                        <p><strong>Tüketici (ALICI), 14 (ondört) gün içinde herhangi bir gerekçe göstermeksizin ve cezai şart ödemeksizin sözleşmeden cayma hakkına                          sahiptir. Cayma hakkı süresi, hizmet ifasına ilişkin sözleşmelerde sözleşmenin kurulduğu gün; mal teslimine ilişkin sözleşmelerde ise                          tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin malı teslim aldığı gün başlar. Ancak tüketici, sözleşmenin kurulmasından                          malın teslimine kadar olan süre içinde de cayma hakkını kullanabilir. Cayma hakkı süresinin belirlenmesinde;                      </strong></p>
                                                                        <p><strong>a) Tek sipariş konusu olup ayrı ayrı teslim edilen mallarda, tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin son malı                          teslim aldığı gün,                      </strong></p>
                                                                        <p><strong>b) Birden fazla parçadan oluşan mallarda, tüketicinin veya tüketici tarafından belirlenen üçüncü kişinin son parçayı teslim aldığı gün,                      </strong></p>
                                                                        <p><strong>c) Belirli bir süre boyunca malın düzenli tesliminin yapıldığı sözleşmelerde, tüketicinin veya tüketici tarafından belirlenen üçüncü                          kişinin ilk malı teslim aldığı gün esas alınır.                      </strong><strong>Cayma bildiriminizi cayma hakkı süresi dolmadan </strong><strong>www.hepsiburada.com</strong> <strong>‘da yer alan kişisel üyelik sayfanızdaki kolay iade seçeneği üzerinden gerçekleştirebilirsiniz. Cayma hakkınız kapsamında                          öngörülen taşıyıcı Yurtiçi Kargo olup,                      </strong><strong>www.hepsiburada.com</strong> <strong>‘da yer alan kişisel üyelik sayfanızdaki kolay iade seçeneğinde geri gönderime ilişkin detaylar açıklanmıştır.</strong> </p>
                                                                        <p><strong>Tüketici aşağıdaki sözleşmelerde cayma hakkını kullanamaz:</strong> </p>
                                                                        <p><strong>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve SATICI veya sağlayıcının kontrolünde olmayan mal veya                          hizmetlere ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>b) Tüketicinin istekleri veya kişisel ihtiyaçları doğrultusunda hazırlanan mallara ilişkin sözleşmeler.</strong> </p>
                                                                        <p><strong>c) Çabuk bozulabilen veya son kullanma tarihi geçebilecek malların teslimine ilişkin sözleşmeler.</strong> </p>
                                                                        <p><strong>ç) Tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olan mallardan; iadesi sağlık ve hijyen açısından                          uygun olmayanların teslimine ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>d) Tesliminden sonra başka ürünlerle karışan ve doğası gereği ayrıştırılması mümkün olmayan mallara ilişkin sözleşmeler.</strong> </p>
                                                                        <p><strong>e) Malın tesliminden sonra ambalaj, bant, mühür, paket gibi koruyucu unsurları açılmış olması halinde maddi ortamda sunulan kitap,                          dijital içerik ve bilgisayar sarf malzemelerine ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>f) Abonelik sözleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi süreli yayınların teslimine ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>g) Belirli bir tarihte veya dönemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-içecek tedariki ve eğlence veya                          dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>ğ) Elektronik ortamda anında ifa edilen hizmetler veya tüketiciye anında teslim edilen gayrimaddi mallara ilişkin sözleşmeler.                      </strong></p>
                                                                        <p><strong>h) Cayma hakkı süresi sona ermeden önce, tüketicinin onayı ile ifasına başlanan hizmetlere ilişkin sözleşmeler.</strong> </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>MADDE 4- GENEL HÜKÜMLER                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>4.1- ALICI, </strong><strong>www.hepsiburada.com</strong> <strong>internet sitesinde sözleşme konusu ürüne ilişkin ön bilgileri okuyup bilgi sahibi olduğunu ve elektronik ortamda gerekli teyidi                          verdiğini beyan eder.                         
                                                                                <br />
                                                                                4.2- Ürün sözleşme tarihinden itibaren en geç 30 gün içerisinde teslim edilecektir. Ürününün teslim edilmesi anına kadar tüm sorumluluk                          SATICI’ya aittir.                         
                                                                                <br />
                                                                                4.3- Sözleşme konusu ürün, ALICI'dan başka bir kişi/kuruluşa teslim edilecek ise, teslim edilecek kişi/kuruluşun teslimatı kabul                          etmemesinden SATICI sorumlu tutulamaz.                         
                                                                                <br />
                                                                                4.4- SATICI, sözleşme konusu ürünün sağlam, eksiksiz, siparişte belirtilen niteliklere uygun ve varsa garanti belgeleri ve kullanım                          kılavuzları ile teslim edilmesinden sorumludur.                         
                                                                                <br />
                                                                                4.5- Sözleşme konusu ürünün teslimatı için işbu sözleşmenin bedelinin ALICI'nın tercih ettiği ödeme şekli ile ödenmiş olması şarttır.                          Herhangi bir nedenle ürün bedeli ödenmez veya banka kayıtlarında iptal edilir ise, SATICI ürünün teslimi yükümlülüğünden kurtulmuş                          kabul edilir.                         
                                                                                <br />
                                                                                4.6- Ürünün tesliminden sonra ALICI'ya ait kredi kartının ALICI'nın kusurundan kaynaklanmayan bir şekilde yetkisiz kişilerce haksız                          veya hukuka aykırı olarak kullanılması nedeni ile ilgili banka veya finans kuruluşun ürün bedelini SATICI'ya ödememesi halinde,                          ALICI'nın kendisine teslim edilmiş olması kaydıyla ürünün SATICI'ya gönderilmesi zorunludur.            </strong>
                                                                        </p>
                                                                        <p><strong>4.7- Garanti belgesi ile satılan ürünlerden olan veya olmayan ürünlerin ayıplı (arızalı, bozuk vb.) halinde veya garanti kapsamında ve                          şartları dahilinde arızalanması veya bozulması halinde gerekli onarımın yetkili servise yaptırılması için sözkonusu ürünler SATICI'ya                          gönderilebilir, bu takdirde kargo giderleri SATICI tarafından karşılanacaktır.                      </strong></p>
                                                                        <p>
                                                                            <strong>4.8-385 sayılı vergi usul kanunu genel tebliği uyarınca iade işlemlerinin yapılabilmesi için tarafınıza göndermiş olduğumuz iade bölümü                          bulunan faturada ilgili bölümlerin eksiksiz olarak doldurulması ve imzalandıktan sonra tarafımıza ürün ile birlikte geri gönderilmesi                          gerekmektedir.                         
                                                                                <br />
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>MADDE 8- UYUŞMAZLIK VE YETKİLİ MAHKEME                         
                                                                                <br />
                                                                            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong>İşbu sözleşmeden doğan uyuşmazlıklarda doğrudan yerleşim yerinizin bulunduğu veya tüketici işleminin yapıldığı yerdeki Tüketici                          Sorunları Hakem Heyeti veya Tüketici Mahkemesi yetkilidir (Gümrük ve Ticaret Bakanlığı tarafından her yıl Aralık ayında belirlenen                          parasal sınırlar dâhilinde 2016 yılı için Tüketici Hakem Heyetlerinin uyuşmazlıklara bakmakla görevli ve yetkili olmalarına ilişkin                          parasal sınırlar; ilçe tüketici hakem heyetleri için üst parasal sınır 2.320 Türk Lirası, Büyükşehir statüsünde olan illerdeki il                          tüketici hakem heyetleri için parasal sınır 2.320 Türk Lirası ile 3.480 Türk Lirası arası, Büyükşehir statüsünde olmayan illerin                          merkezlerindeki il tüketici hakem heyetleri için üst parasal sınır 3.480 Türk Lirası, Büyükşehir statüsünde olmayan illere bağlı                          ilçelerdeki il tüketici hakem heyetleri için parasal sınır 2.320 Türk Lirası ile 3.480 Türk Lirası arası olarak tespit edilmiştir.).                      </strong></p>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong>Siparişin gerçekleşmesi durumunda ALICI işbu sözleşmenin tüm koşullarını kabul etmiş sayılır. </strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p><strong></strong></p>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <p>
                                                                            <strong>SATICI : Trendi A.Ş.                         
                                                                                <br />
                                                                                <br />
                                                                                ALICI :                         
                                                                                <br />
                                                                                <br />
                                                                                Tarih : 03.08.2016            </strong>
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table style="width: 100%; background-color: gray">
                                                            <tr>
                                                                <td style="width: 150px">Onaylanma Tarihi:</td>
                                                                <td>3.7.2016 10:10:57</td>
                                                            </tr>
                                                            <tr>
                                                                <td>IP Adresi:</td>
                                                                <td>212.253.202.67</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Onay Kodu:</td>
                                                                <td>
                                                                    <textarea readonly="readonly" style="width: 100%; background-color: gray">80CA7541612CC29E14CD62618FA4DBF5CFA975F3927DE153A77F919BABC7025FD3DA0E646CCDB00152C5156F6491AC0A6FF2704F0F8F6D57F3D58EF49517FC70</textarea></td>
                                                            </tr>
                                                        </table>
                                                    </div>


                                                    </div>
                                                </div>
                                          
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">6 | Sipariş Onay</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse6" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                       Siparişi Onayla butonuna bastığınızda, toplam tutar tarafınızdan tahsil edilecektir.

                                                        <asp:Button ID="btnSiparisOnay" CssClass="single_add_to_cart_button" OnClick="btnSiparisOnay_Click" runat="server" Text="Sipariş Onay" />
                                                    </div>

                                                </div>
                                            </div>
                                        </asp:Panel>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- CHECKOUT_METHOD_AREA END-->
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-12">
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <h2 class="category-heding"></h2>
                            <%--<div class="manufacturers-color-menu">
                                <nav>
                                    <ul>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Checkout Method</a></li>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Billing Information</a></li>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Shiping Information</a></li>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Shipping Method</a></li>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Payment Information</a></li>
                                        <li><a href="#"><i class="fa fa-arrow-right"></i>Order Review</a></li>
                                    </ul>
                                </nav>
                            </div>--%>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <!-- COMPARE START-->
                            <div class="compare">
                                <%--<div class="news-letter">
                                    <h2>Compare</h2>

                                    <span class="input-box">
                                        <input type="text" name="Email" placeholder="You have no item(s) to compare">
                                    </span>

                                </div>--%>
                            </div>
                            <!-- COMPARE END-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MAINCONTAIN-AREA END-->
</asp:Content>
