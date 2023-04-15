<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admininfo.aspx.cs" Inherits="FMS.Admininfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin info</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <style>
        body{
             background: url(image/homeback.jpg);
        }
         .card{
             border-top-left-radius: 8px;
            border-bottom-left-radius: 8px;
            border-bottom-right-radius: 8px;
            border-top-right-radius: 8px;
            border-radius: 8px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="card" id="card">
            <div class="card-header bg-info"><h2 class="text-center">Admin info</h2></div>
            <div class="card-body bg-light text-dark">
                <div class="row align-items-start">
                    <div class="col">
                        <asp:Label ID="Label1" runat="server" Text="Full name"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label2" runat="server" Text="contact number"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row">
                     <div class="col">
                        <asp:Label ID="Label3" runat="server" Text="Email address"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label4" runat="server" Text="Image File"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select any image" ControlToValidate="FileUpload1" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </div>
                </div>
                  <div class="row">
                     <div class="col">
                        <asp:Label ID="Label5" runat="server" Text="Comapny/Shop name"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col">
                        <asp:Label ID="Label6" runat="server" Text="Pincode"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator><br/>
                    </div>
                </div>
                <div class="row">
                     <div class="col">
                        <asp:Label ID="Label7" runat="server" Text="Postal address"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div><br />
                <div class="card-footer">
                     <div class="row" style="text-align:center">
                    <div class="col">
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success " Width="100" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="btn btn-danger" Width="100" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Exit" CssClass="btn  btn-secondary" Width="100" OnClick="Button3_Click" />
                
                    </div>
                        </div>
                </div>
               
            </div>
        </div>
                    
    </form>
</body>
</html>
