<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="eshop.Admin.KategoriEkle1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <asp:GridView ID="gvKategoriler" runat="server" AutoGenerateColumns="False" DataKeyNames="id" CellPadding="4" Height="161px" Width="430px" OnRowEditing="gvKategoriler_RowEditing" OnSelectedIndexChanged="gvKategoriler_SelectedIndexChanged" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
                <asp:BoundField DataField="Kategoriad" HeaderText="KategoriAdı" />
                <asp:BoundField DataField="Aciklama" HeaderText="Acıklama" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>


        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Yeni Kategori</asp:LinkButton>
        <br />
        <br />
        <asp:Panel ID="pnlEkle" Visible="false" runat="server">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Kategori:"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="txtKategori" runat="server" Width="160px"></asp:TextBox>
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
                    <td colspan="2" style="text-align: left">
                        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" Width="80px" OnClick="btnKaydet_Click" />
                        <asp:Button ID="btndegistir" runat="server" Text="Değiştir" Width="80px" OnClick="btndegistir_Click" />
                        <asp:Button ID="btnsil" runat="server" Text="Sil" Width="80px" OnClick="btnsil_Click" />
                    </td>

                </tr>
            </table>
        </asp:Panel>
   

</asp:Content>
