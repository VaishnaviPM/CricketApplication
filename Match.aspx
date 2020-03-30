<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Match.aspx.cs" Inherits="MyCricketApplication.Match" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
    .header-center{
        text-align:center;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:Label runat="server" CssClass="pull-left" ID="lblErrorMsg" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:Label>
            <asp:Button runat="server" CssClass="float-right btn btn-info" ID="btnBack" Text="Home Page" PostBackUrl="~/HomePage.aspx" />
        </div>

        <asp:GridView runat="server" ID="GridViewMatch">
        </asp:GridView>

        <asp:GridView runat="server" ID="GridViewTeamA" AutoGenerateColumns="true"></asp:GridView>
        <asp:GridView runat="server" ID="GridViewTeamB" AutoGenerateColumns="true"></asp:GridView>
    </form>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
</body>
</html>
