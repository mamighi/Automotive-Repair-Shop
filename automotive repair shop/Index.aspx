<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="automotive_repair_shop.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--fonts-->
		<link href='//fonts.googleapis.com/css?family=Viga' rel='stylesheet' type='text/css'/>
        <!--//font-family: 'Viga', sans-serif;-->
        
        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'/>
        <!--//font-family: 'Roboto Condensed', sans-serif;-->
        
		<!--fonts-->
		<!--bootstrap-->
			 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<!--coustom css-->
			<link href="css/style.css" rel="stylesheet" type="text/css"/>
		<!--default-js-->
			<script src="js/jquery-2.1.4.min.js"></script>
		<!--bootstrap-js-->
			<script src="js/bootstrap.min.js"></script>
		<!--script-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 12;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
 <div class="header" id="home">
            <nav class="navbar navbar-default Torque-nav">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <h1><a class="navbar-brand">AUTOMOTIVE REPAIR SHOP</a></h1>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right torq-menu">
                    <li><a href="Index.aspx">Home</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>

            
                  </ul>
                </div><!-- /.navbar-collapse -->
<div class="clearfix"></div>
              </div><!-- /.container-fluid -->
            </nav>
            <!--navbar-->
            <div class="banner-info">
                <div style="width:400px; margin-left:170px">
                <div class="container">
                    <ul class="bn-in-txt">
                        <li><h2>Login</h2></li>
                        <li><p>User Name:&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" CssClass="auto-style1"></asp:TextBox></p>
                        </li>
                        <li>
                            <p>&nbsp;</p></li>
                        <li><p>Password:&nbsp; &nbsp;   <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" CssClass="col-xs-offset-0" TextMode="Password"></asp:TextBox></p></li>
                    </ul>

                    <div class="bn-in-buttons" style="margin-left:240px">

                        <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="btn btn-default bn-in" BackColor="#D73739" ForeColor="White" BorderStyle="None" OnClick="Button1_Click" />

                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="White" Visible="False"></asp:Label>
                </div>
                    </div>
            </div>
        </div>
        
    </form>
</body>
</html>
