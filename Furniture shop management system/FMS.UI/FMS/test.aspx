<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="FMS.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   </head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
         <center>
    <asp:Button ID="btnShowPopup" runat="server" Text="Show Popup" OnClick="ShowPopup"
        CssClass="btn btn-info btn-lg" />
</center>
<!-- Bootstrap -->
<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
<!-- Bootstrap -->
<!-- Modal Popup -->
<div id="MyPopup" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    &times;</button>
                <h4 class="modal-title">
                </h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">
                    Close</button>
            </div>
        </div>
    </div>
</div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click1" />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button3" runat="server" Text="Button3" OnClick="Button3_Click" /><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        
        
        
        
        
        <script type="text/javascript">
     function ShowPopup(title, body) {
         $("#MyPopup .modal-title").html(title);
         $("#MyPopup .modal-body").html(body);
         $("#MyPopup").modal("show");
     }
 </script>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
