<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminsetting.aspx.cs" Inherits="FMS.adminsetting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br /><br />
            <div class="container bg-light" style="width:80%">
                <div class="card  bg-warning">
                    <div class=" card-header bg-light text-dark">
                        <h2 style="text-align:center"><b>Application setting</b></h2>
                    </div>
                    <div class="card-body">
                        <div class="row">
                       <div class="col-md-5">
                        &nbsp;</div>
                             <div class="col-md-5">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Image ID="Image1" runat="server" ImageUrl="~/image/login5.png" Style="width:150px" />
                       </div></div>
                        <div class="row">
                            <div class="col-md-4">
                        &nbsp;</div>
                           
                        </div>
                          <div class="row">
                            <div class="col-md-4">
                        &nbsp;</div>
                            <div class="col-md-5">
                                <asp:Label ID="Label1" runat="server" Text="Username" CssClass="col-form-label-lg"></asp:Label>    
                                 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Username" AutoPostBack="True"></asp:TextBox>
                            </div></div>

                        <div class="row">
                            <div class="col-md-4">
                        &nbsp;</div>
                            <div class="col-md-5">
                                <asp:Label ID="Label4" runat="server" Text="Password" CssClass="col-form-label-lg"></asp:Label>    
                                 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Password" AutoPostBack="True"></asp:TextBox><br />
                            </div></div>

                        <div class="row">
                            <div class="col-md-4">
                        &nbsp;</div>
                            <div class="col-md-4">
                                <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass=" btn btn-primary btn-lg" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="Button2" runat="server" Text="Back"  CssClass=" btn btn-secondary btn-lg"/>
                            </div>
                        </div><br />
                        <div class="row">
                            <div class="col-md-12">
                                &nbsp;
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                        &nbsp;</div></div>
                        <div class="row">
                            <div class="col-md-4">&nbsp;</div>
                            <div class="col-md-5">
                                <div class="d-grid gap-2">
                            <asp:Button ID="Button3" runat="server" Text="Factory reset" cssclass="btn btn-danger"/>
                            </div><br />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-danger" role="alert">
                                      Only admin or authorized person can use this page**<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                    </div>
                            </div>
                        </div>
        </div></div></div>
    </form>
</body>
</html>
