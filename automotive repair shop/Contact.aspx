<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="automotive_repair_shop.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
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
</head>
<body>
    <form id="form1" runat="server">
<div class="header about-top" id="home">
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
                  <h1><a class="navbar-brand" >AUTOMOTIVE REPAIR SHOP</a></h1>
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
        </div>
        <!--head-top-->
        <div class="contact">
            <div class="container">
                <h1>Contact</h1>
                <div class="cont-top">
                    <div class="col-md-6 contact-pad">
                        <div class="text-left">
                            Email<br />
                            <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
                            <br />
                            Subject<br />
                            <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
                            <br />
                            Message<br />
                            <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="SEND" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="201px" Height="30px" OnClick="Button1_Click"></asp:Button>
                
           
                          
                            <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                
           
                          
                        </div>
                    </div>
                    <div class="col-md-6 contact-pad"> 
                        <div class="reachus">
                            <ul class="adress-left">
                                <h3>AUTOMOTIVE REPAIR SHOP</h3>
                                <li>Kuala Lumpur</li>
                                <li>TPM, Bukit Jalil</li>

                            </ul>
                        <div class="clearfix"></div>
                        </div>
                    </div>
            <div class="clearfix"></div>
                </div>
                <div class="map">
                    <h3>find us</h3>

                        <iframe src="https://maps.google.com/maps?hl=en&q=tpm kualalumpur&ie=UTF8&t=m&z=10&iwloc=B&output=embed"  frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <!--head-bottom-->
        <div class="footer">
            <div class="container">
                <div class="div1">
                    <div class="col-md-3 mail_soc">
                            <div class="social">
                                <p>follow us on</p>
                                <ul>
                                    <li><a href="#" class="face"></a></li>
                                    <li><a href="#" class="twit"></a></li>
                                    <li><a href="#" class="gplus"></a></li>
                                    <li><a href="#" class="link"></a></li>
                                </ul>
                            </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function() {
                    /*
                    var defaults = {
                        containerID: 'toTop', // fading element id
                        containerHoverID: 'toTopHover', // fading element hover id
                        scrollSpeed: 1200,
                        easingType: 'linear' 
                    };
                    */

                    $().UItoTop({ easingType: 'easeOutQuart' });

                });
            </script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        </div>
    </form>
</body>
</html>
