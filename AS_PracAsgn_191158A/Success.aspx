<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AS_PracAsgn_191158A.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbl_welcome" runat="server"></asp:Label>
        <h2>User Information</h2>
        <h2>Email : <asp:Label ID="lbl_userID" runat="server"></asp:Label>
        </h2>
        <h2>Credit Card No. :&nbsp;
            <asp:Label ID="lbl_ccno" runat="server"></asp:Label>
        </h2>
        <h2>Expiry date :&nbsp;
            <asp:Label ID="lbl_ccdate" runat="server"></asp:Label>
        </h2>
        <h2>CVV :&nbsp;
            <asp:Label ID="lbl_cccvv" runat="server"></asp:Label>
        </h2>
        <p>
            <asp:Button ID="btn_logout" runat="server" OnClick="LogoutMe" Text="Logout" Width="254px" />
        </p>
    </div>
    </form>
</body>

</html>
