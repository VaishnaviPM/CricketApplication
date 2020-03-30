<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayerInfo.aspx.cs" Inherits="MyCricketApplication.PlayerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        .table-header{
            background-color:cornflowerblue;
            color:black;
            font-size:medium;
            font-weight:bold;
            font-size:large;
            /*margin:5px;
            padding:5px;*/
            border:5px;
            border-color:black;  
        }
         .table-data{
            border:2px;
            border-color:black;
            background-color:lightblue;
            color:black;
            font-size:medium;
            font-weight:100;
            font-size:large;
            /*padding:5px;*/
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div style="width:100%">
            <div>
                <asp:Label CssClass="float-left" runat="server" ID="lblErrorMsg" Font-Bold="true" ForeColor="Red"></asp:Label>    
            </div>
            <div style="width:100%" class="float-none">
                 <%-- Header --%>
                <div style="width:100%;text-align:center;">
                    <asp:Label runat="server" ID="headerText" Text="PLAYER DETAILS" Font-Bold="true" Font-Italic="true" />
                </div>
                <%-- Grid for Player Info --%>
                <div style="width:100%;float:left;">
                    <%--<asp:GridView ID="GridViewPlayerInfo" Width="100%" runat="server" AutoGenerateColumns="false">
                        <HeaderStyle BackColor="#0033cc" VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="White" Height="30"/>
                        <AlternatingRowStyle BackColor="#99ff99" />
                        <RowStyle Height="20" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField ControlStyle-Width="33%" HeaderText="Player ID" DataField="nationality" />
                        </Columns>
                    </asp:GridView>
                    <br /><br />--%>
                    <asp:Table Width="100%" runat="server" ID="tblPlayerData">
                        <asp:TableRow Width="100%">
                            <asp:TableCell Width="25%" CssClass="table-header">
                                <asp:Label runat="server" Text="Player ID"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtPlayerID"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Width="25%" CssClass="table-header">
                                <asp:Label runat="server" Text="Name"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtshortName"></asp:Label>
                            </asp:TableCell>                            
                        </asp:TableRow>
                        <asp:TableRow Width="100%">
                            <asp:TableCell Width="25%" CssClass="table-header">
                                <asp:Label runat="server" Text="D.O.B"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtDOB"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Width="25%" CssClass="table-header">
                                <asp:Label runat="server" Text="Playing Role"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtPlayinRole"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell Width="25%"  CssClass="table-header">
                                <asp:Label runat="server" Text="Batting Style"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtBatStyle"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Width="25%" CssClass="table-header">
                                <asp:Label runat="server" Text="Bowling Style"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="25%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtBowlStyle"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow Width="100%">
                            <asp:TableCell Width="18%" CssClass="table-header">
                                <asp:Label runat="server" Text="Rating"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="18%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtRatin"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Width="18%"  CssClass="table-header">
                                <asp:Label runat="server" Text="Nationality"></asp:Label>
                            </asp:TableCell>                            
                            <asp:TableCell Width="18%" CssClass="table-data">
                                <asp:Label runat="server" ID="txtNationality"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                   
                </div>
            </div>
            </div>
        </div>
    </form>
     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
</body>
</html>
