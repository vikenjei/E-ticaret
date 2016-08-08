<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Alt-AltKategoriEkle.aspx.cs" Inherits="eshop.Admin.Alt_AltKategoriEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
      <div style="font-family:Verdana; font-size:small">
          <asp:Label ID="Label3" runat="server" Text="Kategori Seçiniz"></asp:Label><br />
          <asp:DropDownList ID="ddlKategoriler" runat="server" Width="120px" AutoPostBack="True" OnSelectedIndexChanged="ddlKategoriler_SelectedIndexChanged"></asp:DropDownList><br />
          <br />
            <asp:Label ID="Label4" runat="server" Text="Alt Kategori Seçiniz"></asp:Label><br />
          <asp:DropDownList ID="ddlaltkategoriler" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlaltkategoriler_SelectedIndexChanged"></asp:DropDownList> <br />
          <br />
          <asp:Label ID="Label5" runat="server" Text="Alt-Alt Kategori Seçiniz"></asp:Label><br />
          <asp:DropDownList ID="ddlaltaltkategoriler" AutoPostBack="True" runat="server" OnSelectedIndexChanged="ddlaltaltkategoriler_SelectedIndexChanged" DataTextField="AltAltKategoriAdi" DataValueField="id"></asp:DropDownList>          
          <br />
          <br />
        <asp:GridView ID="gvAltKategoriler" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="383px" AutoGenerateColumns="False" OnSelectedIndexChanged="gvAltKategoriler_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="&gt;&gt;" />
                <asp:BoundField DataField="AltAltKategoriAdi" HeaderText="AltAltKategoriAd" />
                <asp:BoundField DataField="aciklama" HeaderText="aciklama" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView><br />
        <asp:LinkButton ID="lbYeniAltKategori" runat="server" OnClick="lbYeniAltKategori_Click" >Yeni AltKategori Ekle</asp:LinkButton>
        <br />
        <br />
        <asp:Panel ID="pnlEkle" runat="server" Visible="false">

            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="AltKategori:"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtAltKategoriAdi" runat="server" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Açıklama  :"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtAciklama" runat="server" Height="36px" TextMode="MultiLine" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" Width="80px" OnClick="btnKaydet_Click" />
                        <asp:Button ID="btnDegistir" runat="server" Text="Değiştir" Width="80px" OnClick="btnDegistir_Click"  />
                        <asp:Button ID="btnSil" runat="server" Text="Sil" Width="80px" OnClick="btnSil_Click" />
                    </td>
                </tr>
            </table>

        </asp:Panel>


   </div>
</asp:Content>
