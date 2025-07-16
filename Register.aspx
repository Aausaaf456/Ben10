<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ben10.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content\bootstrap.min.css" rel="stylesheet" />
    <link href="content\bootstrap.css" rel="stylesheet" />
</head>
<body>
   <form id="form1" runat="server">
    <div class="container p-5">
        <div class="text-center mb-4">
            <asp:Label ID="LabelHeader" runat="server" Text="Register" CssClass="fs-2 fw-bold" />
        </div>

        <div class="mb-3">
            <asp:Label ID="LabelName" runat="server" Text="Name" AssociatedControlID="TextBoxName" CssClass="form-label fs-5" />
            <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control fs-5" placeholder="Enter your name" />
        </div>

        <div class="mb-3">
            <asp:Label ID="LabelEmail" runat="server" Text="Email" AssociatedControlID="TextBoxEmail" CssClass="form-label fs-5" />
            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control fs-5" TextMode="Email" placeholder="Enter your email" />
        </div>

        <div class="mb-3">
            <asp:Label ID="LabelId" runat="server" Text="ID" AssociatedControlID="TextBoxId" CssClass="form-label fs-5" />
            <asp:TextBox ID="TextBoxId" runat="server" CssClass="form-control fs-5" TextMode="Number" placeholder="Enter your ID" />
        </div>

        <div class="mb-3">
            <asp:Label ID="LabelPassword" runat="server" Text="Password" AssociatedControlID="TextBoxPassword" CssClass="form-label fs-5" />
            <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="form-control fs-5" TextMode="Password" placeholder="Enter your password" />
        </div>

        <div class="mb-4">
            <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="TextBoxConfirmPassword" CssClass="form-label fs-5" />
            <asp:TextBox ID="TextBoxConfirmPassword" runat="server" CssClass="form-control fs-5" TextMode="Password" placeholder="Confirm your password" />
        </div>

        <div class="d-flex gap-3">
            <asp:Button ID="ButtonRegister" runat="server" Text="Register" CssClass="btn btn-primary fs-5 w-50" OnClick="ButtonRegister_Click" />
            <asp:Button ID="ButtonClear" runat="server" Text="Clear" CssClass="btn btn-secondary fs-5 w-50" OnClick="ButtonClear_Click" />
        </div>
    </div>
</form>

</body>
</html>
