<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLogin.ascx.cs" Inherits="eshop.Admin.WebUserControl1" %>


<link href="css/sb-admin-2.css" rel="stylesheet">
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title" >Admin Panel</h3>
                </div>
                <div class="panel-body">
                    <form role="form">
                        <fieldset>
                            <div>

                               <%-- <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı"></asp:Label>
                                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                <asp:TextBox ID="txtUser" BorderStyle="Groove"  runat="server" Width="180px" Height="26px"></asp:TextBox>
                                <asp:RequiredFieldValidator  ID="rfvkullanici" runat="server" ErrorMessage="Kullanıcı adını boş bırakmayın" ControlToValidate="txtuser" ForeColor="red" ValidationGroup="1"></asp:RequiredFieldValidator>
                            </div>
                            <div>

                                <asp:Label ID="Label2" runat="server" Text="Şifre"></asp:Label>
                                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <%--<input class="form-control" placeholder="Password" name="password" type="password" value="">--%>
                                <asp:TextBox ID="txtsifre" BorderStyle="Groove"  runat="server" Width="179px" Height="26px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvsifre" runat="server" ErrorMessage="Şifreyi giriniz" ControlToValidate="txtuser" ForeColor="red" ValidationGroup="1"></asp:RequiredFieldValidator>
                            </div>
                           
                            <div class="checkbox">
                                
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <%--<a href="index.html" class="btn btn-lg btn-success btn-block">Login</a>--%>
                            <asp:Button ID="btnGiris" runat="server" CssClass="btn btn-lg btn-success btn-block" Text="Giriş" OnClick="btnGiris_Click"  />&nbsp;&nbsp;<br />
&nbsp;<asp:Label ID="lblmesaj" runat="server" ForeColor="Red"></asp:Label>

                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery Version 1.11.0 -->
<script src="js/jquery-1.11.0.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="js/plugins/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/sb-admin-2.js"></script>
