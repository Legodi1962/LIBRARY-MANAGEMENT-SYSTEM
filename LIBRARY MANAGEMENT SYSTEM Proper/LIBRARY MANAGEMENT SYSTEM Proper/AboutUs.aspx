<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="LIBRARY_MANAGEMENT_SYSTEM_Proper.AboutUs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #00FFFF">
<head runat="server">
    <title>Powering the Future of Libraries | Bokamoso Connect</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700;900&family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <style type="text/css">
        :root {
            --primary: #2A4365; /* Deep blue */
            --secondary: #F6AD55; /* Vibrant orange */
            --accent: #38B2AC; /* Teal */
            --dark: #1A365D;
            --light: #F7FAFC;
            --text-dark: #2D3748; /* Dark gray for text */
            --text-light: #F8F9FA; /* Light text for dark backgrounds */
        }
        
        body {
            font-family: 'Open Sans', sans-serif;
            line-height: 1.8;
            color: var(--text-dark);
            margin: 0;
            padding: 0;
            background-color: var(--light);
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Hero Section - Fixed contrast */
        .hero {
            background: linear-gradient(135deg, var(--primary), var(--dark));
            color: var(--text-light); /* Changed to light text */
            padding: 100px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .hero h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 4rem;
            font-weight: 900;
            margin: 0;
            line-height: 1.2;
            text-transform: uppercase;
            letter-spacing: 1px;
            animation: textPop 1s ease;
            color: white; /* Ensured white text */
        }
        
        .hero p {
            font-size: 1.5rem;
            max-width: 800px;
            margin: 30px auto;
            opacity: 0.9;
            color: var(--text-light); /* Light text */
        }
        
        /* Stats Section - Improved contrast */
        .stats {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            padding: 80px 0;
            background: white;
        }
        
        .stat-item {
            text-align: center;
            padding: 30px;
            flex: 1;
            min-width: 200px;
        }
        
        .stat-number {
            font-family: 'Montserrat', sans-serif;
            font-size: 4rem;
            font-weight: 700;
            color: var(--primary);
            margin: 0;
            line-height: 1;
        }
        
        .stat-label {
            font-size: 1.2rem;
            color: var(--accent);
            font-weight: 600;
            margin-top: 10px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        /* Benefits Section - Clear contrast */
        .benefits {
            padding: 80px 0;
            background: var(--light);
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .section-title h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.8rem;
            color: var(--primary);
            margin: 0;
            position: relative;
            display: inline-block;
        }
        
        .benefit-card {
            background: white;
            color: var(--text-dark); /* Dark text on white */
        }
        
        /* Testimonials - Fixed contrast */
        .testimonials {
            padding: 100px 0;
            background: linear-gradient(135deg, var(--primary), var(--dark));
            color: var(--text-light); /* Light text on dark */
        }
        
        .testimonial-card {
            background: rgba(255,255,255,0.1);
            color: var(--text-light); /* Light text */
        }
        
        /* Footer - Fixed contrast */
        .footer {
            background: var(--dark);
            color: var(--text-light); /* Light text */
        }
        
        .footer a {
            color: var(--text-light); /* Light links */
        }
        
        /* Ensured all buttons have proper contrast */
        .cta-button {
            color: var(--dark) !important; /* Dark text on orange */
        }
        
        .final-cta .cta-button {
            color: var(--text-light) !important; /* Light text on dark */
        }
        .auto-style1 {
            color: #336699;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            margin-top: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <h1>LIBRARIES REIMAGINED&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="186px" ImageUrl="~/library slogan.jpg" Width="230px" />
                </h1>
                <p class="auto-style1"><strong><em>Bokamoso Connect isn't just software - it's a revolution in how knowledge is accessed, managed, and shared across Africa's educational institutions.</em></strong></p>
                &nbsp;<asp:Button ID="btnExperience" runat="server" BackColor="Blue" Height="24px" Text="Experience the difference" OnClick="btnExperience_Click" />
            </div>
        </section>
        
        <!-- Stats Section -->
        <section class="stats">
            <div class="stat-item">
                <p class="stat-number">10×</p>
                <p class="stat-label">Faster Checkouts</p>
            </div>
            <div class="stat-item">
                <p class="stat-number">98%</p>
                <p class="stat-label">Reduced Errors</p>
            </div>
            <div class="stat-item">
                <p class="stat-number">24/7</p>
                <p class="stat-label">Access Anywhere</p>
            </div>
            <div class="stat-item">
                <p class="stat-number">500+</p>
                <p class="stat-label">Satisfied Institutions</p>
            </div>
        </section>
        
        <!-- Benefits Section -->
        <section class="benefits">
            <div class="container">
                <div class="section-title">
                    <h2>WHY BOKAMOSO CONNECT?</h2>
                </div>
                
                <div class="benefits-grid">
                    <!-- Benefit cards with proper contrast -->
                    <div class="benefit-card">
                        <div class="benefit-icon">
                            <i class="fas fa-bolt"></i>
                        </div>
                        <h3>Lightning Fast</h3>
                        <p>Our optimized system processes transactions in milliseconds, eliminating long queues and wait times that plague traditional libraries.</p>
                    </div>
                    
                    <!-- More benefit cards... -->
                </div>
            </div>
        </section>
        
        <!-- Testimonials -->
        <section class="testimonials">
            <div class="container">
                <div class="section-title">
                    <h2 style="color: var(--text-light);">VOICES OF TRANSFORMATION</h2>
                </div>
                
                <div class="testimonial-card">
                    <p class="testimonial-content">"Since implementing Bokamoso Connect, our library staff productivity has increased by 60%..." ~ S.Bogopa</p>
                    <p class="testimonial-author">&nbsp;</p>
                </div>
            </div>
        </section>
        
        <!-- Final CTA -->
        <section class="final-cta">
            <div class="container">
                <h2>READY TO TRANSFORM YOUR LIBRARY?</h2>
                &nbsp;<asp:Button ID="btnStart" runat="server" BackColor="Blue" CssClass="auto-style2" OnClick="btnStart_Click" Text="Get Started Today------&gt;" />
            </div>
        </section>
        
        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <h3 style="margin: 0; font-size: 1.8rem; color: var(--text-light);">BOKAMOSO CONNECT</h3>
                <p style="opacity: 0.8; max-width: 600px; margin: 20px auto; color: var(--text-light);">The future of African library management starts here</p>
                
                <!-- Social links with proper contrast -->
                <div class="social-links">
                    <a href="https://twitter.com/bokamosoconnect" class="social-link" target="_blank">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <!-- More social links... -->
                </div>
                
                <p class="copyright" style="color: var(--text-light);">© 2023 Bokamoso Connect. All rights reserved.</p>
            </div>
        </footer>
    </form>
</body>
</html>
