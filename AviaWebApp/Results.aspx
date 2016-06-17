<%@ Page Title="Результат" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="AviaWebApp.Results" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>
            Период вылета: <asp:Label ID="Period_Label" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Город отправления: "></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Город прибытия: "></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
    </div>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" DataSourceID="SqlDataSourceAvia">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Компания" SortExpression="Name" />
                <asp:BoundField DataField="BUYBEGIN" HeaderText="Дата начала покупки" SortExpression="BUYBEGIN" />
                <asp:BoundField DataField="BUYEND" HeaderText="Дата окончания покупки" SortExpression="BUYEND" />
                <asp:BoundField DataField="PRICE" HeaderText="Цена" SortExpression="PRICE" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceAvia" runat="server" ConnectionString="<%$ ConnectionStrings:NewAviaDBConnectionString %>" SelectCommand="SELECT Company.Name, Race.BUYBEGIN, Race.BUYEND, Race.PRICE 
FROM Race INNER JOIN Company
ON Race.COMPANYID = Company.ID
WHERE (((Race. FLYBEGIN = @FlyB) AND (Race. FLYEND = @FlyE))
            OR ((Race. FLYBEGIN <= @FlyB) AND (Race. FLYEND >= @FlyB)) OR ((Race. FLYBEGIN > @FlyB) AND (Race. FLYBEGIN <= @FlyE))) AND (Race. POINTBEGIN = @PointB) AND (Race. POINTEND = @PointE)
">
            <SelectParameters>
                <asp:QueryStringParameter Name="FlyB" QueryStringField="dateS" />
                <asp:QueryStringParameter Name="FlyE" QueryStringField="datePo" />
                <asp:QueryStringParameter Name="PointB" QueryStringField="cityOut" />
                <asp:QueryStringParameter DefaultValue="" Name="PointE" QueryStringField="cityIn" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
