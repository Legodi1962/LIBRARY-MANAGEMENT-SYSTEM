<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPage.aspx.cs" Inherits="LIBRARY_MANAGEMENT_SYSTEM_Proper.DefaultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Campus Library Portal</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet" />

    <style type="text/css">
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body {
            font-family: 'Inter', sans-serif;
            min-height: 100vh;
            background: linear-gradient(135deg, #edc0bf 0%, #c4caef 100%);
            display: flex;
            flex-direction: column;
        }

        nav {
            position: sticky;
            top: 0;
            background: rgba(50, 50, 90, 0.9);
            padding: 1rem;
            display: flex;
            justify-content: center;
            gap: 2rem;
            z-index: 100;
        }

        /* Make nav buttons look like links */
        nav .nav-btn {
            background: transparent;
            border: none;
            color: white;
            font-weight: 600;
            font-size: 1rem;
            cursor: pointer;
            transition: color 0.3s;
        }
        nav .nav-btn:hover {
            color: #ffd700;
        }

        header {
            padding: 4rem 1rem 2rem 1rem;
            text-align: center;
            color: white;
        }
        header h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .login-options {
            padding: 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .card {
            background: rgba(255,255,255,0.3);
            border: 1px solid rgba(255,255,255,0.4);
            border-radius: 16px;
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 8px 32px rgba(0,0,0,0.1);
            padding: 2rem;
            text-align: center;
            color: #333;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0,0,0,0.2);
        }

        /* Style login buttons */
        .login-btn {
            display: inline-block;
            margin-top: 1rem;
            padding: 0.6rem 1.2rem;
            background: rgba(50, 50, 90, 0.8);
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: 500;
            font-size: 0.95rem;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
        }
        .login-btn:hover {
            background: rgba(50, 50, 90, 1);
            transform: scale(1.05);
        }

        @media (max-width: 600px) {
            header h1 { font-size: 2rem; }
            nav { gap: 1rem; }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <nav>
            <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="nav-btn" OnClick="btnHome_Click" />
            <asp:Button ID="btnContact" runat="server" Text="Contact" CssClass="nav-btn" OnClick="btnContact_Click" />
            <asp:Button ID="btnHelp" runat="server" Text="Help" CssClass="nav-btn" OnClick="btnHelp_Click" />
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="nav-btn" OnClick="btnRegister_Click" />
        </nav>

        <header>
            <h1>Welcome to the Campus Library</h1>
            <p>Access knowledge, manage books, and stay connected</p>
        </header>

        <section class="login-options">
            <div class="card">
                <h3>Student Login</h3>
                <p>Access your borrowed books, reserve items, and more.</p>
                <asp:Button ID="btnStudentLogin" runat="server" Text="Login as Student" CssClass="login-btn" OnClick="btnStudentLogin_Click" />
            </div>
            <div class="card">
                <h3>Admin Login</h3>
                <p>Manage inventory, student records, and transactions.</p>
                <asp:Button ID="btnAdminLogin" runat="server" Text="Login as Admin" CssClass="login-btn" OnClick="btnAdminLogin_Click" />
            </div>
        </section>

    </form>
</body>
</html>
