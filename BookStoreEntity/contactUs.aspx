<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="BookStoreEntity.contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>Name </h3>
                <asp:TextBox ID="TxtName" class="col-md-6" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <h3>E-Mail </h3>
                <asp:TextBox ID="TxtEmail" class="col-md-6" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-12">
                <h3>Message </h3>
                <asp:TextBox ID="TxtMsg" class="col-md-12" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-12">
                <asp:Button ID="Button1" runat="server" Text="Send Message " CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
        <h1 id="rslt" runat="server"></h1>
    </div>

</asp:Content>
