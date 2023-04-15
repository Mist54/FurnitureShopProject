<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="FMS.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin Login</title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="adminlogin.css" />
</head>
<body>
  <div class=" container jumbotron bg-light" style="width:100%">
    <div class="wrapper">
    <div class="registration-box">
        <div class="form-left-box ">
            <img src="image/sofa.jpg" width="400" height="460"/>
        </div>
        <form id="form1" runat="server" class="form-detail">
            <h1> Admin login</h1>
            <div class="form-row">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="inputbox" placeholder="Enter the Username" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </div>

            <div class="form-row">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="inputbox" placeholder="Enter the Password" TextMode="Password" >
                </asp:TextBox>
                
            </div>
            <div class="form-row-last">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="register-button" OnClick="Button1_Click" />

                <br />
                <br />

                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Invalid Username or Password" Visible="False"></asp:Label>
                <br /><br />
            <a href="employeelogin.aspx">not a admin?? CLICK HERE!!</a></div>
         </form>
    </div>
    </div>
    </div>
</body>
</html>
