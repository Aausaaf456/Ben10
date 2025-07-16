<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ben10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content\bootstrap.min.css" rel="stylesheet" />
    <link href="content\bootstrap.css" rel="stylesheet" />
</head>
<body>

   <form id="form1" runat="server">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="border p-5 rounded-4 shadow w-100" style="max-width: 450px;">
            <h2 class="text-center mb-4">Login</h2>

            <div class="mb-3">
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email ID" CssClass="form-label fs-5" />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control fs-5" TextMode="Email" placeholder="Enter your email" />
            </div>

            <div class="mb-3">
                <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" Text="Password" CssClass="form-label fs-5" />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control fs-5" TextMode="Password" placeholder="Enter your password" />
            </div>

            <div class="d-flex justify-content-between">
                <asp:Button ID="btnSubmit" runat="server" Text="Login" CssClass="btn btn-success fs-5 w-45" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-outline-secondary fs-5 w-45" />
            </div>
        </div>
    </div>
</form>

</body>
</html>
