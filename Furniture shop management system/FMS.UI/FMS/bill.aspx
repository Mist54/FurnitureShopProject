<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="FMS.bill1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title> 
</head>

<body>
    
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <div class="card">
        <div class="card-header bg-warning">
            <h2 style="text-align:center"><b>Bill and product info</b></h2> 
             <h4 style="text-align:center"><b>Furniture Shop management System</b></h4> 
        </div></div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12 text-primary">
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div> </div><br />

                         <div class="row">
                                <div class="col-1 col-sm-3"> <asp:Label ID="Label2" runat="server" Text="Costomer ID"></asp:Label> </div>
                                    <div class="col-1 col-sm-3"> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></div>
                        </div><br />
                        
                         <div class="row">
                                <div class="col-1 col-sm-3"> <asp:Label ID="Label4" runat="server" Text="Costomer name "></asp:Label> </div>
                                    <div class="col-1 col-sm-3"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></div>
                        </div>
                    </div></div><br />
            <div class="card">
        <div class="card-body">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" ShowFooter="True" CssClass="table table-bordered border-dark  table table-hover">
            <Columns>
                <asp:BoundField DataField="itemid" HeaderText="Item ID" />
                <asp:BoundField DataField="itemname" HeaderText="Item Name" />
                <asp:BoundField DataField="qty" HeaderText="Qty" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="total" HeaderText="Total Price" />
                <asp:BoundField DataField="dis" HeaderText="Discount" />
                <asp:BoundField DataField="grand" HeaderText="Grand Total" />
            </Columns>
        </asp:GridView>
         
                </div>
                <div class="row">
                    <div class="col-md-7">
                        &nbsp;
                    </div>
                    <div class="col-md-2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class="col-md-3">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         </div>
                </div>  
        <br />
        <br />
        <br />
        &nbsp;<br />
        <div class="d-grid gap-2">
        <asp:Button ID="Button4" runat="server" class="btn btn-primary" Text="Home" type="button" OnClick="Button4_Click" />
            <asp:Button ID="Button1" runat="server" Text="Download invoice" OnClick="Button1_Click" />
        </div>
        <br />
        <br />
        
        </div>
                <div class="card-footer">
                    <div class="text-nowrap bd-highlight" style="width: 8rem;">
                        <p>For contact Please visit www.example.com</p><br />
                        <p>Phone:-6674544...</p><br /> </div>
                        <div class="alert-warning">
                            <p>Once the bill is Completed Item will not be refunded</p>
                        </div>
                </div>
        </asp:Panel>
            
       
    </form>
</body>
</html>
