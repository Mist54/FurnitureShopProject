<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="attendence1.aspx.cs" Inherits="FMS.attendence1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
     <style>
        body{
             background: url(image/homeback.jpg);
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card">
       <div class="card-header" style= "background-color:#e4ea17; text-align:center">
                  <h2><b>Employee payslip detail</b> </h2>
                </div>
        <div class="card-body" style="background-color:rgb(152 236 122 / 0.85)"> 
             <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter the Month you want to search" ></asp:TextBox></div>
            <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Text="Search"  CssClass=" btn btn-outline-info" Width="150px" OnClick="Button1_Click" />    
        </div></div>
    <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
           
    <div class="col-md-12">
            &nbsp;
        </div>
    <div class="row">
        <div class="col-md-12">
           <div style="width: 100%; height: 400px; overflow: scroll">
                                     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-hover table-bordered border-dark" ForeColor="#333333" GridLines="None">
                                         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                         <Columns>
                                             <asp:BoundField DataField="cid" HeaderText="Sl.No" />
                                             <asp:BoundField DataField="employeeid" HeaderText="Employee ID" />
                                             <asp:BoundField DataField="employeename" HeaderText="Employee name" />
                                             <asp:BoundField DataField="month" HeaderText="Paid month" />
                                             <asp:BoundField DataField="nlt" HeaderText="NO.leaves taken" />
                                             <asp:BoundField DataField="da" HeaderText="DA" />
                                             <asp:BoundField DataField="hra" HeaderText="HRA" />
                                             <asp:BoundField DataField="totalsalary" HeaderText="Salary" />
                                             <asp:BoundField DataField="realsalary" HeaderText="Actual salary" />
                                             <asp:BoundField />
                                         </Columns>
                                        
                                     
                                         <EditRowStyle BackColor="#999999" />
                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                        
                                     
                                     </asp:GridView></div>
        </div>
    </div>
     <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
                &nbsp;
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Placeholder="Enter Sl.No that you want to delete"></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="Delete" CssClass=" btn btn-danger btn-lg" OnClick="Button2_Click" />
                <br />
        </div></div>
        </div>
    </div>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
