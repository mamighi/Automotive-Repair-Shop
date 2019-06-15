<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upcoming.aspx.cs" Inherits="automotive_repair_shop.Upcoming" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upcoming Appointmenr</title>  
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
    <div>
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
                  <h1><a class="navbar-brand" href="ShopMain.aspx">AUTOMOTIVE REPAIR SHOP</a></h1>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right torq-menu">
                 <li><a href="logout.aspx">Log Out</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
    <div class="clearfix"></div>
              </div><!-- /.container-fluid -->
            </nav>
        </div>
        <div style="width:100%; height:500px">
            <div style="width:100%; height:50px">

                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g" Text="Today" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="This Week" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g" Text="This Month" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="g" Text="All" OnCheckedChanged="RadioButton4_CheckedChanged" AutoPostBack="True" />

            </div>
            <div  style="width:90%; height:450px; margin-left:50px">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Table ID="Table1" runat="server" ForeColor="White">
                    <asp:TableRow runat="server" BackColor="#D73739">
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="25px">ID</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="100px">Date</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="100px">Time</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="150px">Costumer Name</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="150px">Phone Number</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="150px">Car Model</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="150px">Plate Number</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

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
    </div>
    </form>
</body>
</html>
