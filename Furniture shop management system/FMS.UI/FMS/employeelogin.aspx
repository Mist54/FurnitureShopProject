<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeelogin.aspx.cs" Inherits="FMS.employeelogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"><br /><br />
        <div class="container bg-light" style="width:80%">
            <div class="row">
                <div class="col-md-12">
                    &nbsp;
                </div>
            </div>
            <div class="card bg-light"><h2 class=" text-center">Employee Login</h2>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="card-body bg-warning">
                <div class="row">
                    <div class="col-md-12 text-center">
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/image/login5.png" Style="width:150px" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-11">
                         <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>    
                         <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter the Employee ID" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged1" TextMode="Number"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-11">
                        <asp:Label ID="Label2" runat="server" Text="Employee name"></asp:Label>    
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" AutoPostBack="True" placeholder="Enter the Employee name" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-11">
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>    
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Password" AutoPostBack="True"  OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-11">
                        <asp:Label ID="Label3" runat="server" Text="Time of login"></asp:Label>    
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
               <br />
                <div class="row">
                    <div class="col-11">
                        <div class="d-grid gap-2">
                        <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass=" btn  btn-success " OnClick="Button1_Click"/>
                        <asp:Button ID="Button2" runat="server" Text="Back"  CssClass=" btn btn-secondary " OnClick="Button2_Click"/>
                        <asp:Button ID="Button3" runat="server" Text="View all"  CssClass=" btn-outline-info btn-lg" OnClick="Button3_Click" /> </div>    
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-11">
                         <asp:Panel ID="Panel1" runat="server">
                            <div style="width: 100%; height: 400px; overflow: scroll">
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-hover table-bordered border-dark" >
                                <Columns>
                                    <asp:BoundField DataField="empid" HeaderText="Employee ID" />
                                    <asp:BoundField DataField="empname" HeaderText="Employee name" />
                                    <asp:BoundField DataField="time" HeaderText="Time of login" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView></div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
