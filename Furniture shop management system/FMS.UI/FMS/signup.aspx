<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="FMS.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>User Sign-up</title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <!-- Background Color-->
    <style>
        body{
            background-color:#3da7bf;
        }
    </style>
</head>
    
<body>
    <form runat="server">
        <!-- Design starts-->
         <div class="row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div>
        <!--Here We use Bootstrap Css for Design . there are 12 rows(row) & 12 columns(col)-->
 <div class="container" style="background-color:lavender">
     <div class="row">
         <div class="col-md-12">
             &nbsp;
         </div>
     </div>
    <div class="row">
                        <div class="col-md-4">
                            <img src="image/welcome.jpg"  class="card-img-top" alt="..." height="700" width="200" /><br />   
                        </div>
                        <div class="col-md-8">
                           
                            <h5 class="card-title">New User? Please Sign-In..</h5><hr />
                            <asp:Label ID="Label1" runat="server" Text="Fullname"></asp:Label>
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="Enter Your Full name"></asp:TextBox><br />
                            <asp:Label ID="Label2" runat="server" Text="Email address"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Enter Your Email address" TextMode="Email"></asp:TextBox>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid email address"
                           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator><br />

                            <asp:Label ID="Label3" runat="server" Text="Phone number" ></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control" Placeholder="Enter Phone number" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged" TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid phone number"
                                ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator><br />
                            
                             <asp:Label ID="Label4" runat="server" Text="Password" ></asp:Label>
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Placeholder="Enter Your Password" TextMode="Password" ></asp:TextBox><br />
                            
                            <asp:Label ID="Label5" runat="server" Text="Repeat Password" ></asp:Label>
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Placeholder="repeat Your Password" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does not match" ControlToCompare="TextBox3" ForeColor="Red" 
                            ControlToValidate="TextBox4"></asp:CompareValidator><br />
                             <div class="form-check">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="   I accept the Terms of Use &amp; Privacy Policy" Checked="True" AutoPostBack="True" />
                     
                   </div>
                <br />
                            <!--Button Design-->
                 <div class="d-grid gap-2">
                     <asp:Button ID="Button1" runat="server" Text="Submit" cssclass="btn btn-outline-primary" OnClick="Button1_Click1"/>
        <br /></div>
                    <a href="userlogin.aspx">Already a User!.. LOGIN HERE..</a> 
                         
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
