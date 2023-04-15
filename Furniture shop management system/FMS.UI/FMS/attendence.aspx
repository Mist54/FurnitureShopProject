<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="attendence.aspx.cs" Inherits="FMS.attendence" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
       <style>
        body{
            background: url(image/homeback.jpg);
        }
    </style>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="row">
        <div class="col-12">
            &nbsp;
        </div>
    </div>
    <div class="card">
        <div class="card-header bg-warning text-dark" style="text-align:center">
            <h2><b> Attendance & Payslip</b></h2>
        </div>
        <div class="card-body"  style="background-color:#bdf6b6">
              <div class="row">
                        <div class="col-md-2 ">
                            <asp:Label ID="Label1" runat="server" Text="Current Date & time" Width="200px"  CssClass=" text-primary"></asp:Label>
                          </div>
                            <div class="col-md-8" >
                                <asp:Label ID="Label2" runat="server" Text=""  Width="200px" CssClass="text-primary"></asp:Label> </div><br />
                        </div>
             <div class="row">
        <div class="col-12">
            &nbsp;
        </div>
    </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label3" runat="server" Text="Employee ID" Width="200px"></asp:Label></div>
                    <div class="col-md-5">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Eg.1234..." TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                    </div>
            </div>
             <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label4" runat="server" Text="Employee name" Width="200px"></asp:Label></div>
                    <div class="col-md-5">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter only Character" CssClass="text-danger" ControlToValidate="TextBox2" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator><br />
                    </div>
            </div>
             <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label5" runat="server" Text="Select Month" Width="200px"></asp:Label></div>
                   <div class="row-md-5">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="btn btn-info dropdown-toggle dropdown-toggle-split btn-sm" >
                        <asp:ListItem>JAN</asp:ListItem>
                        <asp:ListItem>FEB</asp:ListItem>
                        <asp:ListItem>MAR</asp:ListItem>
                        <asp:ListItem>APR</asp:ListItem>
                        <asp:ListItem>MAY</asp:ListItem>
                        <asp:ListItem>JUN</asp:ListItem>
                        <asp:ListItem>JUL</asp:ListItem>
                        <asp:ListItem>AUG</asp:ListItem>
                        <asp:ListItem>SEP</asp:ListItem>
                        <asp:ListItem>OCT</asp:ListItem>
                        <asp:ListItem>NOV</asp:ListItem>
                        <asp:ListItem>DEC</asp:ListItem>
                    </asp:DropDownList></div>
                
             </div><br />
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label6" runat="server" Text="Total working days" Width="200px"></asp:Label></div>
                    <div class="col-md-5">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>
            </div><br />
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label7" runat="server" Text="Total leave taken" Width="200px"></asp:Label></div>
                    <div class="col-md-5">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                    </div>
            </div><br />
            <div class="row">
                <div class="col-md-2">
                    <asp:Label ID="Label8" runat="server" Text="Total Salary" Width="200px"></asp:Label></div>
                    <div class="col-md-5">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Eg.20000,30000 etc" TextMode="Number"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please enter only numbers" ValidationExpression="^\d+" ForeColor="Red"></asp:RegularExpressionValidator><br />
                    </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Save" CssClass=" btn btn-success" Width="150px" OnClick="Button1_Click"/>
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Search" CssClass=" btn btn-info"  Width="150px" OnClick="Button2_Click"/>
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Update" CssClass=" btn btn-warning"  Width="150px" OnClick="Button3_Click"/>
            &nbsp;<asp:Button ID="Button5" runat="server" Text="View all" CssClass=" btn btn-dark"  Width="150px" OnClick="Button5_Click"/>
             &nbsp;<asp:Button ID="Button6" runat="server" Text="Reset" CssClass=" btn btn-light" Width="150px" OnClick="Button6_Click"/>
             &nbsp;<asp:Button ID="Button7" runat="server" Text="ganarate Payslip" CssClass=" btn btn btn-link" Width="150px" OnClick="Button7_Click" />          <asp:Panel ID="Panel1" runat="server">
                <asp:Label ID="Label21" runat="server" Text="Employee ID"></asp:Label>
                 &nbsp;
                 <asp:Label ID="Label24" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label22" runat="server" Text="Employee name"></asp:Label>
                 &nbsp;
                 <asp:Label ID="Label25" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label23" runat="server" Text="Month"></asp:Label>
                 &nbsp;
                 <asp:Label ID="Label26" runat="server" Text=""></asp:Label><br />

                <table class="table table-responsive table-hover table-bordered border-dark">
                    <thead>

                            <tr>

                                  <th scope="col">Sl.No</th>
                                  <th scope="col"><asp:Label ID="Label9" runat="server" Text="DA"></asp:Label></th>
                                  <th scope="col"><asp:Label ID="Label11" runat="server" Text="HRA" ></asp:Label></th>
                                  <th scope="col"><asp:Label ID="Label13" runat="server" Text="PF"></asp:Label></th>
                                  <th scope="col"><asp:Label ID="Label15" runat="server" Text="TAX" ></asp:Label>
                                  <th scope="col"><asp:Label ID="Label17" runat="server" Text="GROSS"></asp:Label>
                                  <th scope="col"> <asp:Label ID="Label19" runat="server" Text="TOTAL SALARY"></asp:Label>                               
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
                              <td><asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
                              <td><asp:Label ID="Label14" runat="server" Text="" ></asp:Label></td>
                              <td><asp:Label ID="Label16" runat="server" Text=""></asp:Label></td>
                               <td><asp:Label ID="Label18" runat="server" Text=""></asp:Label></td>
                                <td><asp:Label ID="Label20" runat="server" Text=""></asp:Label></td>
                            </tr></tbody>

                </table>
                <div class="row">
        <div class="col-12">
            &nbsp;
        </div>
    </div>
                 <div class="row">
        <div class="col-12">
        </div>
    </div>
                          </asp:Panel>
             <div class="row">
        <div class="col-12">
            &nbsp;
        </div>
    </div>
            </div> <div class="card-footer">
                <div class="alert-warning">
                    <p>This form used for <i>saving deleting and viewing </i> employee details</p>
                    <p><b>Please read above info carefully and fill all the records </b></p>
                </div>
            </div>
            </div>
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
