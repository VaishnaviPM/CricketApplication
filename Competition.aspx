<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Competition.aspx.cs" Inherits="MyCricketApplication.Competition1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server" style="width:100%;margin:0px;padding:30px;">

        <div class="row" >
            <div class="col-6">
                <asp:Label runat="server" CssClass="float-left" ID="lblErrorMsg" Font-Size="Medium" ForeColor="Red" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-6">
                <asp:Button runat="server" CssClass="float-right btn btn-info" ID="Button1" Text="Home Page" PostBackUrl="~/HomePage.aspx" />
            </div>
        </div>
        <br />

        <div style="width:100%">
            <div style="width:45%" class="float-left">
                 <%-- Header --%>
                <div style="width:100%;text-align:center;">
                    <asp:Label runat="server" ID="headerText" Text="COMPETITION DETAILS" Font-Bold="true" Font-Italic="true" />
                </div>
                <%-- Grid for Competition ID --%>
                <div style="width:100%;float:left;">
                    <asp:GridView ID="GridViewComp" Width="100%" runat="server" AutoGenerateColumns="false">
                        <HeaderStyle BackColor="#0033cc" VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="White" Height="30"/>
                        <AlternatingRowStyle BackColor="#99ff99" />
                        <RowStyle Height="20" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField ControlStyle-Width="33%" HeaderText="Team ID" DataField="team_id" />
                            <asp:BoundField ControlStyle-Width="33%" HeaderText="Title" DataField="title" />
                            <asp:BoundField ControlStyle-Width="33%" HeaderText="Match ID" DataField="mid" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <div>
                        <asp:Label runat="server" CssClass="float-left" ID="lblErrorMessage" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
                    </div>
                    <div style="margin:auto;padding:0px;display:inline-block">
                    
                    <asp:Table runat="server">
                         <asp:TableRow>
                             <asp:TableCell>
                                 <asp:Label Font-Bold="true" runat="server" ID="lblTeamID" Text="Enter Team ID :"></asp:Label>
                             </asp:TableCell>
                             <asp:TableCell>
                                 <asp:TextBox Width="211px" runat="server" ID="txtTeamID" Height="30px"></asp:TextBox><br/>
                             </asp:TableCell>
                             <asp:TableCell>
                                 <asp:Button CssClass="btn btn-success" runat="server" ID="btnSearch" OnClick="btnSearch_Click" Text="Get Team Information"/>
                            </asp:TableCell>                             
                         </asp:TableRow>
                    </asp:Table>
                </div> 
                </div>
            </div>
             <div style="width:45%" class="float-right">
                 <%-- Header --%>
                <div style="width:100%;text-align:center;">
                    <asp:Label runat="server" ID="lblTeamDetail" Text="TEAM DETAILS" Font-Bold="true" Font-Italic="true" />
                </div>
                 <%-- Grid for Team Players --%>
                <div style="width:100%;float:left;">
                     <asp:GridView ID="GridViewTeam" Width="100%" runat="server" AutoGenerateColumns="false">
                        <HeaderStyle BackColor="#0033cc" VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="White" Height="30"/>
                        <AlternatingRowStyle BackColor="#99ff99" />
                        <RowStyle Height="20" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField ControlStyle-Width="33%" DataField="pid" HeaderText="Player ID" />
                            <asp:BoundField ControlStyle-Width="33%" DataField="short_name" HeaderText="Name" />                           
                            <asp:BoundField ControlStyle-Width="33%" DataField="nationality" HeaderText="Nationality" />
                        </Columns>
                    </asp:GridView>
                    <br /><br />
                    <div style="margin:auto;padding:0px;display:inline-block">
                    <asp:Table runat="server" ID="tblPlayerForm">
                         <asp:TableRow>
                             <asp:TableCell>
                                 <asp:Label Font-Bold="true" runat="server" ID="lblPlayer" Text="Enter Player ID :"></asp:Label>
                             </asp:TableCell>
                             <asp:TableCell>
                                 <asp:TextBox Width="211px" runat="server" ID="txtPlayerID" Height="30px"></asp:TextBox><br/>
                             </asp:TableCell>
                             <asp:TableCell>
                                 <asp:Button CssClass="btn btn-success" runat="server" ID="btnSearchPlayerData" OnClick="btnSearchPlayerData_Click" Text="Get Player Information"/>
                            </asp:TableCell>
                             <asp:TableCell>
                                 <asp:Label runat="server" ID="lblErrorPlayerData" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
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
