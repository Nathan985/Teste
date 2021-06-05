<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Teste._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="33px" OnSelectedIndexChanged="onFilterList" Width="217px">
        <asp:ListItem Selected="True">Nenhum</asp:ListItem>
        <asp:ListItem>SP</asp:ListItem>
        <asp:ListItem>RJ</asp:ListItem>
    </asp:DropDownList>

    <asp:GridView ID="GridViewStaffList" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="275px" Width="699px" BackColor="Black" BorderStyle="Solid" CellSpacing="1">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>
