<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admininfo2.aspx.cs" Inherits="FMS.admininfo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin detail</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body{
            background: url(image/homeback.jpg);
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                  <div class="row">
                      <div class="col-md-12">
                          &nbsp;
                      </div>
                  </div><br />
                    <div class="row">
                        <div class="col-md-4">
                            &nbsp;
                        </div>
                        <div class="col-md-6">
                             <div class="card" style="width: 25rem;">
                          <img src="<%#Eval("image") %>" class="card-img-top" alt="...">
                                <div class="card-body">
                                <h4 class="card-title" style="text-align:center">Admin Information</h4><hr />
                                </div>
                                 <div class="card-body">
                                    <table class="table">
                                         <thead>
                                              <tr>
                                                  <th scope="col">Full name</th>
                                                   <th scope="col"><%#Eval("name") %></th>
                                              </tr>
                                             <tr>
                                                 <th>Contact number</th>
                                                  <th><%#Eval("phone") %></th>
                                             </tr>
                                             <tr>
                                                  <th scope="col">Email address</th>
                                                   <th scope="col"><%#Eval("email") %></th>
                                              </tr>
                                             <tr>
                                                 <th>Comapny name</th>
                                                  <th><%#Eval("company") %></th>
                                             </tr>
                                               <tr>
                                                 <th>Postal address</th>
                                                  <th><%#Eval("address") %>&nbsp;&nbsp;<%#Eval("pincode") %></th>
                                             </tr>
                                         </thead>
                                    </table>
                                      <div class="card-body">
                                          <a href="Admininfo.aspx" class="card-link">Change account..</a></div>
                                 </div>
                        </div>
                        </div>
                       
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
