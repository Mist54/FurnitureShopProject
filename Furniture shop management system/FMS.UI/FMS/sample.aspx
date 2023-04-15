<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sample.aspx.cs" Inherits="FMS.sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body{
            background: url(image/homeback.jpg);
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid phone number" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid pin code" ValidationExpression="^[1-9][0-9]{5}$" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>

        <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />

        <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" Text="Supplier Id" Width="100px"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eg.1234..." autofocus=""></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" Text="Supplier name" Width="150px"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"  autofocus="" ></asp:TextBox><br />
                        </div>
                    </div>
    </form>
</body>
</html>
