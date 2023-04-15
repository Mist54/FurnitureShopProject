<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="FMS.userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
      <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <!--background Color Section -->
    <style>
        body{
            background-color:#3da7bf;
        }
    </style>
</head>
    
<body>
    <!--Design starts-->
    <!--Login form Used to login Existing users -->
    <form runat="server">
         <div class=" row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div> <div class=" row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div> <div class=" row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div>
 <div class="container" style="background-color:lavender">
     <div class="row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div>
    <div class="row">
                        <div class="col-md-4">
                            <img src="image/welcome.jpg"  class="card-img-top" alt="..." height="400" width="200" /><br />   
                        </div>
                        <div class="col-md-8">
                           
                            <h5 class="card-title">Already a User!! Login here..</h5><hr />
                            <asp:Label ID="Label2" runat="server" Text="Email address"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Enter Your Email address" TextMode="Email"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid email address"
                           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator><br />
                            
                             <asp:Label ID="Label4" runat="server" Text="Password" ></asp:Label>
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Placeholder="Enter Your Password" TextMode="Password"  ></asp:TextBox>
                            <br />
                            <div class="form-check">
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" Checked="True" AutoPostBack="True" />
                     
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="Email address or password is worng!! Please Enter correct password or email address" CssClass="text-danger"></asp:Label>
                                
                   </div>
                <br /><!--Button section Used Bootstrap css-->
                 <div class="d-grid gap-2">
                     <asp:Button ID="Button1" runat="server" Text="Login" cssclass="btn btn-outline-primary" OnClick="Button1_Click" />
        <br /></div><!--Link Section Can Redirect to Sign-up form-->
                    <a href="signup.aspx">New User? Sign-up HERE!!</a> 
                         
 </div>
         <div class="row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div>
    </div></div>
        <!--Design Ends-->
    </form>
</body>
</html>
