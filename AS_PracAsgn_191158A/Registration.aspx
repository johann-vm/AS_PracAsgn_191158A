<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AS_PracAsgn_191158A.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Account Registration</title>

    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_password.ClientID %>').value;

            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password length must be at least 12 characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too_short");
            }

            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 small letter";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_small");
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 capital letter";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_cap");
            }

            else if (str.search(/[^a-zA-Z0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_special");
            }

            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent"
            document.getElementById("lbl_pwdchecker").style.color = "Blue";
        }
    </script>

</head>
<body>
    <form id="registration_form" runat="server">
        <asp:Label ID="register_title" runat="server" Text="Account Registration"></asp:Label>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbl_firstname" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_lastname" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_lastname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_email" runat="server" textMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="val_email" runat="server" Text="Enter valid email" ControlToValidate="Email" ValidationExpression="(\w)+@(\w)+.com(.(\w)+)*" ForeColor="Red"/>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr><td>Credit Card Information:</td></tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_crinfo" runat="server" Text="Credit Card No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_crinfo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_expdate" runat="server" Text="Expiry date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_expdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_crcvv" runat="server" Text="CVV"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_crcvv" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_password" runat="server" onkeyup="javascript:validate()" TextMode="Password"></asp:TextBox>
                    <%-- <asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox> --%>
                </td>
                <td>
                    <asp:Label ID="lbl_pwdchecker" runat="server" Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_birthdate" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tb_birthdate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btn_checkpwd" runat="server" OnClick="btn_checkpwd_Click" Text="Check Password" Width="403px" />
        </p>
        <p>
            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" Width="403px" />
        </p>
            <asp:Button ID="lbl_loginpage" runat="server" OnClick="btn_gotologin" Text="Go to login page"></asp:Button>
    </form>
</body>
</html>
