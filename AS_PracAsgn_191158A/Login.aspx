<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS_PracAsgn_191158A.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Login</title>

    <script src="https://www.google.com/recaptcha/api.js?render=6Ley-04eAAAAAM0PytPNY6QFMLpZAARAQziWAkbS"></script>

</head>
<body>
    <form id="login_form" runat="server">
        <asp:Label ID="login_title" runat="server" Text="Account Registration"></asp:Label>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbl_userid" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_userid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btn_loginsubmit" runat="server" OnClick="btn_loginsubmit_Click" Text="Submit" Width="254px" />
        </p>
        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>
        <p>
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lbl_gScore" runat="server"></asp:Label>
        </p>
    </form>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6Ley-04eAAAAAM0PytPNY6QFMLpZAARAQziWAkbS', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
        });
    </script>
</body>
</html>