<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anim.aspx.cs" Inherits="FMS.anim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @keyframes myAnim {
          0%,
          50%,
          100% 
          {
            opacity: 1;
          }

          25%,
          75% {
            opacity: 0;
          }
        
        }
 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
