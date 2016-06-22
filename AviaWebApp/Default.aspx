<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AviaWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">        
        <script runat="server">string s = DateTime.Now.ToString("dd.mm.yyy");</script>
        <table>
            <tr>
                <th><p class="lead">Период планируемой даты вылета:</p></th>
            </tr>
            <tr>                
                <td>
                    <p>
                    С: <asp:TextBox ID="Date_s" class="datepicker-here" runat="server"></asp:TextBox>
                 </p>
                </td>  
                <td>
                    <p>По: <asp:TextBox ID="Date_po" class="datepicker-here" runat="server"></asp:TextBox></p>
                </td>              
            </tr> 
            <tr>
                <td>
                <p>
            Город отправления: <asp:DropDownList ID="City_out" runat="server" DataSourceID="SqlDataSourceForCities" DataTextField="POINTBEGIN" DataValueField="POINTBEGIN"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceForCities" runat="server" ConnectionString="<%$ ConnectionStrings:NewAviaDBConnectionString %>" SelectCommand="SELECT DISTINCT [POINTBEGIN] FROM [Race]"></asp:SqlDataSource>
        </p>
                </td>
                <td>
                    Город прибытия: <asp:DropDownList ID="City_in" runat="server" DataSourceID="SqlDataSourceForEndCities" DataTextField="POINTEND" DataValueField="POINTEND"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceForEndCities" runat="server" ConnectionString="<%$ ConnectionStrings:NewAviaDBConnectionString %>" SelectCommand="SELECT DISTINCT [POINTEND] FROM [Race]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>    
                <td>      
                    <p>
            Глубина: <asp:DropDownList ID="Depth_Drop" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </p>
                </td> 
                <td>
                    Алгоритм: <asp:DropDownList ID="Alg_Drop" runat="server">
                <asp:ListItem>Алгоритм 1</asp:ListItem>
                <asp:ListItem>Алгоритм 2</asp:ListItem>
            </asp:DropDownList>
                </td>
            </tr>
        </table>        
        <p>
            <asp:Button ID="SendButton" runat="server" Text="Проверить" class="btn btn-primary btn-lg" OnClick="SendButton_Click" />
        </p>
    </div>

</asp:Content>
