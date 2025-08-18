<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LIBRARY_MANAGEMENT_SYSTEM_Proper.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-card {
            background: #fff;
            padding: 30px;
            width: 350px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-card h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .login-btn {
            background: #0078d7;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-btn:hover {
            background: #005fa3;
        }

        .extra-links {
            margin-top: 15px;
        }

        .extra-links a {
            text-decoration: none;
            color: #0078d7;
            font-size: 14px;
        }

        .extra-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <h2>Library Login</h2>

            <div class="form-group">
                <label for="txtUsername">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>

            <button runat="server" id="btnLogin" class="login-btn" onserverclick="btnLogin_Click">
                Login
            </button> 

            <div class="extra-links">
                <a href="#">Forgot Password?</a>
            </div>
        </div>
    </form>
</body>
</html>
