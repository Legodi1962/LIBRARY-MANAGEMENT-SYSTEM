<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="LIBRARY_MANAGEMENT_SYSTEM_Proper.ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #006699">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FF0000;
        }
        .auto-style3 {
            height: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>RESET YOUR PASSWORD<br />
            </strong>
        </div>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblLibraryNumber" runat="server" Text="Library Number:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLibraryNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtLibraryNumber"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCurrent" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtCurrent"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:Label ID="lblNew" runat="server" Text="New Password:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNew" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtNew"></asp:RequiredFieldValidator>
                    <br />
                    <em>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Must be atleast 8 characters with uppercase,lowercase,number, and special character"></asp:Label>
                    </em>
                    <br />
                    <br />
                    <asp:Label ID="lblConfirm" runat="server" Text="Confirm New Password:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required!" ForeColor="Red" ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    <br />
                    <h3 align="center" style="font-family: Arial, sans-serif; font-size: 1em; outline: 0px !important; margin-left: 1em; margin-right: 1em; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Forgot your password? Please go to&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                    </h3>
                    </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnReset" runat="server" BackColor="Aqua" Text="Reset Password" OnClick="btnReset_Click" />
        </p>
    </form>
</body>
</html>
