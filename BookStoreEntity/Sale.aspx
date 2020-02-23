<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="BookStoreEntity.Sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Sale form isused to keep the record of the sale by the store for management -->
    <style>
        td, th {
            font-size: 11px;
        }
    </style>

    <!--h1 tag is used to print the text bigger on screen-->
    <h1 style="color: white;">Sale Record of the Book Store </h1>
    <div class="container">
        <div class="row">
            <!--Listview is showing the data of sale books -->
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SDateLabel" runat="server" Text='<%# Eval("SDate") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SDateTextBox" runat="server" Text='<%# Bind("SDate") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BookNameTextBox" runat="server" Text='<%# Bind("BookName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AuthorNameTextBox" runat="server" Text='<%# Bind("AuthorName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SDateTextBox" runat="server" Text='<%# Bind("SDate") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SDateLabel" runat="server" Text='<%# Eval("SDate") %>' />
                        </td>
                    </tr>
                </ItemTemplate>

                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">id</th>
                                        <th runat="server">Customer Name</th>
                                        <th runat="server">Mobile</th>
                                        <th runat="server">Book Name</th>
                                        <th runat="server">Author Name</th>
                                        <th runat="server">Qty</th>
                                        <th runat="server">Price</th>
                                        <th runat="server">Date</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AuthorNameLabel" runat="server" Text='<%# Eval("AuthorName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SDateLabel" runat="server" Text='<%# Eval("SDate") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookDBConnectionString %>" DeleteCommand="DELETE FROM [Sale] WHERE [id] = @id" InsertCommand="INSERT INTO [Sale] ([CustomerName], [Mobile], [BookName], [AuthorName], [Qty], [Price], [SDate]) VALUES (@CustomerName, @Mobile, @BookName, @AuthorName, @Qty, @Price, @SDate)" SelectCommand="SELECT * FROM [Sale] ORDER BY [id] DESC" UpdateCommand="UPDATE [Sale] SET [CustomerName] = @CustomerName, [Mobile] = @Mobile, [BookName] = @BookName, [AuthorName] = @AuthorName, [Qty] = @Qty, [Price] = @Price, [SDate] = @SDate WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="AuthorName" Type="String" />
                    <asp:Parameter Name="Qty" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="SDate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Mobile" Type="String" />
                    <asp:Parameter Name="BookName" Type="String" />
                    <asp:Parameter Name="AuthorName" Type="String" />
                    <asp:Parameter Name="Qty" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="SDate" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>

    </div>
</asp:Content>
