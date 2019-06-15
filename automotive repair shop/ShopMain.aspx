<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShopMain.aspx.cs" Inherits="automotive_repair_shop.ShopMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
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
                  <h1><a class="navbar-brand">AUTOMOTIVE REPAIR SHOP</a></h1>
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
        <div style="width:100%; height:700px">
            <div style="margin-left:150px;margin-right:150px; height:100%" >
                <div style="width:100%; height:300px; float:left">
                <div style="float:left; margin-left:150px; width:150px">
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl="~/images/NewCostumer.png"  />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="NEW COSTUMER" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button1_Click"></asp:Button>
                </div>
                  <div style="float:left; margin-left:150px;width:150px">
                          <asp:Image ID="Image6" runat="server" Height="150px" Width="150px" ImageUrl="~/images/User Anonymous Red Delete.jpg" />
                    <br />
                    <br />
                <asp:Button ID="Button6" runat="server" Text="DELETE COSTUMER" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button6_Click"></asp:Button>
                    </div>
                <div style="float:right; margin-right:150px;width:150px ">

                    <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" ImageUrl="~/images/NewAppointment.png" />
                    <br />
                    <br />
                <asp:Button ID="Button2" runat="server" Text="NEW APPOINTMENT" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button2_Click"></asp:Button>
                </div>
            </div>


            <div style="width:100%;  height:300px; float:left">
                <div style="float:left; margin-left:150px; width:150px">
                    <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" ImageUrl="~/images/UpcomingApointments.png" />
                    <br />
                    <br />
                <asp:Button ID="Button3" runat="server" Text="Upcoming Appointments" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button3_Click"></asp:Button>
                </div>
                <div style="float:left; margin-left:150px;width:150px">
                <asp:Image ID="Image4" runat="server" Height="150px" Width="150px" ImageUrl="~/images/PerformedTasks.jpg" />
                    <br />
                    <br />
                   <asp:Button ID="Button4" runat="server" Text="Performed Tasks" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button4_Click"></asp:Button> 
                </div>
              <div style="float:right; margin-right:150px;width:150px">
                <asp:Image ID="Image5" runat="server" Height="150px" Width="150px" ImageUrl="~/images/GenerateReport.png" />
                  <br />
                  <br />
                 <asp:Button ID="Button5" runat="server" Text="Generate Report" BackColor="#D73739" BorderStyle="None" CssClass="btn-default" ForeColor="White" Width="150px" Height="30px" OnClick="Button5_Click"></asp:Button>
                   </div>
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
    </div>
    </form>
</body>
</html>
