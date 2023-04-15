<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tableview.aspx.cs" Inherits="FMS.tableview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
     <style>
        body{
             background-color:rgb(244 241 122 / 0.79)
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
                        <div class="col-12">
                            &nbsp;
                        </div></div> <br />
    <div class="form">
        <div class="row">
            <div class="col-md-12">
                   <div style="width: 100%; height: 400px; overflow: scroll">
            <h2><b> &nbsp;Supplier Detail</b></h2>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-hover table-borderd " AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="supplierid" HeaderText="Supplier ID" />
                <asp:BoundField DataField="suppliername" HeaderText="Supplier Name" />
                <asp:BoundField DataField="number" HeaderText="PhoneNO" />
                <asp:BoundField DataField="company" HeaderText="Company" />
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
        </asp:GridView>
       
                </div>
            </div>
            </div>
         <div style="width: 100%; height: 400px; overflow: scroll">
              <h2><b>&nbsp;Employee Detail</b></h2>
             <asp:GridView ID="GridView2" runat="server"  CssClass="table table-hover table-borderd " AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                 <Columns>
                     <asp:BoundField DataField="employeeid" HeaderText="Employee ID" />
                     <asp:BoundField DataField="name" HeaderText="Employee Name" />
                     <asp:BoundField DataField="doj" HeaderText="Date of Join" />
                     <asp:BoundField DataField="phone" HeaderText="PhoneNO" />
                     <asp:BoundField DataField="salary" HeaderText="Salary" />
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
             </asp:GridView>
        
        </div>
         <div style="width: 100%; height: 400px; overflow: scroll">
        <h2> <b>Stock Detail</b></h2>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-borderd table-hover table-responsive">
                 <Columns>
                     <asp:BoundField DataField="productid" HeaderText="product ID" />
                     <asp:BoundField DataField="productname" HeaderText="Product name" />
                     <asp:BoundField DataField="qty" HeaderText="QTY" />
                     <asp:BoundField DataField="price" HeaderText="Price" />
                     <asp:BoundField DataField="company" HeaderText="Company" />
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
             </asp:GridView>
    </div>
         <div class="row">
    <div class="col" >
        <div style="width: 100%; height: 400px; overflow: scroll">
            <h2><b> &nbsp;Order Detail</b></h2>
       <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="table table-hover table-borderd " AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="costomername" HeaderText="Costomer name" />
                <asp:BoundField DataField="phone" HeaderText="PhoneNO" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="itemname" HeaderText="Item Name" />
                 <asp:BoundField DataField="price" HeaderText="Price" />
                 <asp:BoundField DataField="status" HeaderText="Order Status" />
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
        </asp:GridView>
        </div></div></div></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
