<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="eshop.Admin.Admin1" enableEventValidation="false" %>

<%@ Register Src="~/Admin/ucLogin.ascx" TagPrefix="uc1" TagName="ucLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="pnlLogin" runat="server">
           <uc1:ucLogin runat="server" ID="ucLogin" /></asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  
    
</asp:Content>
