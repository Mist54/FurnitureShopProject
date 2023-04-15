<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="FMS.placeorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Place Portal</title>
    <link href="placeorder.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
 <style>
     form {
         background-color:#d9d9d9;
         animation: myAnim 1s ease 0s 1 normal forwards;
         animation-duration: 4s;
         border-radius: 30px;
     }
@keyframes myAnim {
  0% {
    animation-timing-function: ease-in;
    opacity: 0;
    transform: translateY(-250px);
  }

  38% {
    animation-timing-function: ease-out;
    opacity: 1;
    transform: translateY(0);
  }

  55% {
    animation-timing-function: ease-in;
    transform: translateY(-65px);
  }

  72% {
    animation-timing-function: ease-out;
    transform: translateY(0);
  }

  81% {
    animation-timing-function: ease-in;
    transform: translateY(-28px);
  }

  90% {
    animation-timing-function: ease-out;
    transform: translateY(0);
  }

  95% {
    animation-timing-function: ease-in;
    transform: translateY(-8px);
  }

  100% {
    animation-timing-function: ease-out;
    transform: translateY(0);
  }
}
 body{
            background: url(image/homeback.jpg);
          
         
        }
 h3{
    text-decoration: overline dashed #bd22b7;
 }
</style>
</head>
   
    
<body>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-md-12">
            &nbsp;
        </div>
    </div><br /><br /><br />
        <div class="row align-items-center">
    <div class="col">
     &nbsp;
    </div>
    <div class="col fs-1 fw-bold text-success">
    Your Order has been placed Successfully!<br />&nbsp;
        <h3 class=" text-black-50">Thanks For Shopping &nbsp; <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-emoji-laughing-fill" viewBox="0 0 16 16">
  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM7 6.5c0 .501-.164.396-.415.235C6.42 6.629 6.218 6.5 6 6.5c-.218 0-.42.13-.585.235C5.164 6.896 5 7 5 6.5 5 5.672 5.448 5 6 5s1 .672 1 1.5zm5.331 3a1 1 0 0 1 0 1A4.998 4.998 0 0 1 8 13a4.998 4.998 0 0 1-4.33-2.5A1 1 0 0 1 4.535 9h6.93a1 1 0 0 1 .866.5zm-1.746-2.765C10.42 6.629 10.218 6.5 10 6.5c-.218 0-.42.13-.585.235C9.164 6.896 9 7 9 6.5c0-.828.448-1.5 1-1.5s1 .672 1 1.5c0 .501-.164.396-.415.235z"/>
</svg></h3>
    </div>
    <div class="col">
  &nbsp;
    </div>
  </div><br />
        <div class="d-grid gap-2">
            <asp:Button ID="Button1" runat="server" Text="Home" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />
</div>
      
<br /><br />

    </form>
</body>
</html>
