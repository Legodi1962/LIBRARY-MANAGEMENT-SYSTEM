<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="BOKAMOSO_CONNECT_LIBRARY_SYSTEM.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #006699">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>FORGOT PASSWORD<br />
            </strong>
        </div>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblLibraryNumber" runat="server" Text="Library Number:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLibraryNumber" runat="server" Width="365px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtLibraryNumber"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblID" runat="server" Text="ID / Passport Number:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtID" runat="server" Width="371px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtID"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblContact" runat="server" Text="Cellphone/ Email address:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtContact" runat="server" Width="364px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblCaptcha" runat="server" Text="Verify you are a human."></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCaptcha" runat="server" Width="359px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtCaptcha"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <br />
                    <h3 style="font-family: Arial, sans-serif; font-size: 1em; outline: 0px !important; margin-left: 1em; margin-right: 1em; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; text-align: left;">NOTE:</h3>
                    <ul style="font-family: Arial, sans-serif; font-size: 16px; outline: 0px !important; text-align: left; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                        <li style="font-family: Arial, sans-serif; font-size: 1em; outline: 0px !important;">The identification information provided will be verified against our records.</li>
                        <li style="font-family: Arial, sans-serif; font-size: 1em; outline: 0px !important;">Your password will be sent via SMS or Email, depending on the one provided.</li>
                    </ul>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnSubmit" runat="server" BackColor="#00CCFF" Text="Submit" OnClick="btnSubmit_Click" />
        </p>
    </form>
</body>
</html>
