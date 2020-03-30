<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyCricketApplication.HomePage" %>
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
    .button{
        margin:10px;
    }
    </style>
</head>    
<body>
    <form style="width:100%;margin:0px;padding:0px;" id="form1" runat="server">
        <br/>
        <div class="container-fluid">
            <div class="btn-group" style="width:100%">
            <asp:Button Width="20%" CssClass="btn btn-primary" BorderWidth="5" runat="server" ID="btnMatchDetail" Text="Get Match Details" OnClick="btnMatchDetail_Click"/>
            <%--<asp:Button Width="32.5%" CssClass="btn btn-primary" BorderWidth="5" runat="server" ID="btnTeamDetails" Text="Get Team Details"/>
            <asp:Button Width="32.5%" CssClass="btn btn-primary" BorderWidth="5" runat="server" ID="btnCompetitionDetail" Text="Get Competition Details" />--%>
        </div>
        <br />
        <%-- Header --%>
        <div style="text-align:center;">
            <asp:Label runat="server" ID="headerText" Text="MATCH DETAILS" Font-Bold="true" Font-Italic="true" />
        </div>
        <%-- Main Grid --%>
        <div style="margin:20px;padding:0px;">
            <asp:GridView CssClass="header-center" runat="server" ID="GridMatches" AutoGenerateColumns="false" Width="100%">
                <HeaderStyle CssClass="header-center" BackColor="#0033cc" HorizontalAlign="Center" ForeColor="White" Height="30"/>
                <AlternatingRowStyle BackColor="#00ccff" />
                <RowStyle Height="10" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Match ID" DataField="match_id" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Competition ID" DataField="competition.cid" />  
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Title" DataField="short_title" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Category" DataField="subtitle" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Status" DataField="status_note" />
                </Columns>
            </asp:GridView>
        </div>            
        <div style="text-align:center;">
            <asp:Label runat="server" Text="For More Information" Font-Underline="true" Font-Names="Lucida Handwriting" Font-Bold="true" Font-Size="Large"></asp:Label>           
        </div>
        <div>
            <asp:Label CssClass="float-left" runat="server" ID="lblErrorMsg" Font-Bold="true" ForeColor="Red"></asp:Label>    
        </div>
            <br/><br />
            <div class="col-xs-12" style="float:left">
            <asp:Table runat="server">
                 <asp:TableRow>
                     <asp:TableCell Width="200">
                         <asp:Label Font-Bold="true" runat="server" ID="lblCompID" Text="Enter Competition ID :"></asp:Label>
                     </asp:TableCell>
                     <asp:TableCell Width="200">
                         <asp:TextBox Width="180px" runat="server" ID="txtCompID" Height="30px"></asp:TextBox>
                     </asp:TableCell>
                      <asp:TableCell Width="200">
                         <asp:Button CssClass="btn btn-success" runat="server" ID="btnSearchbyComp"  Text="Get Information" OnClick="btnSearchbyComp_Click"/>
                    </asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow></asp:TableRow>
            </asp:Table>
            <br />
           <%-- <asp:Table runat="server">
                <asp:TableRow>
                     <asp:TableCell Width="200">
                         <asp:Label Font-Bold="true" runat="server" ID="lblMatchID" Text="Enter Match ID :"></asp:Label>
                     </asp:TableCell>
                     <asp:TableCell Width="200">
                         <asp:TextBox Width="180px" runat="server" ID="txtMatchID" Height="30px"></asp:TextBox>
                     </asp:TableCell>
                      <asp:TableCell Width="200">
                         <asp:Button CssClass="btn btn-success" runat="server" ID="btnSearchbyMatch"  Text="Get Team Information" OnClick="btnSearchbyMatch_Click"/>
                    </asp:TableCell>
                 </asp:TableRow>
            </asp:Table>       --%>     
        </div> 
        <%--<div style="margin:0px;padding:0px;">
            <asp:GridView runat="server" ID="GridViewComp" AutoGenerateColumns="false" Width="100%">
                <HeaderStyle BackColor="#0033cc" VerticalAlign="Middle" HorizontalAlign="Center" ForeColor="White" Height="30"/>
                <AlternatingRowStyle BackColor="#99ff99" />
                <RowStyle Height="20" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Match ID" DataField="match_id" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Competition ID" DataField="competition.cid" />  
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Title" DataField="short_title" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Category" DataField="subtitle" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Format" DataField="format_str" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Status" DataField="status_note" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Location" DataField="venue.location" />
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Stadium" DataField="venue.name" />   
                    <asp:BoundField ItemStyle-Height="30" HeaderText="Result" DataField="result" />                      
                </Columns>
            </asp:GridView>
         </div>--%>
            </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
</body>
</html>
