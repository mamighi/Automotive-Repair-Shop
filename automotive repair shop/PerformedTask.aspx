<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PerformedTask.aspx.cs" Inherits="automotive_repair_shop.PerformedTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Performed Tasks</title>  
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
            <div style="width:150px; height:100%; line-height:30px;margin-left:50px;float:left">
                
                 



                <br />
                Customer ID/Email:<br />
                <br />
                <br />
                Appointment ID:<br />
                First Name:<br />
                Last Name:<br />
                Gender:<br />
                Contact Number:<br />
                Age:<br />
                Email:<br />
                Car Model:<br />
                Car Plate Number:<br />
                Address:

            </div>










        <div style="width:250px; height:100%; float:left; line-height:30px ">

            <br />

            <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"></asp:TextBox>
            <br />
               <asp:Button ID="Button4" runat="server" Text="Submit" BackColor="#D73739" BorderStyle="None" CssClass="auto-style1" ForeColor="White" Width="70px" Height="30px" OnClick="Button4_Click"></asp:Button>
                
               <br />
                
               <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server"></asp:Label>

            <br />
            <asp:Label ID="Label8" runat="server"></asp:Label>

            <br />
            <asp:Label ID="Label9" runat="server"></asp:Label>

        </div>
            <div style="height:100%; width:500px; line-height:30px;float:left">




                <br />
              <asp:Panel ID="Panel1" runat="server" Height="359px" ScrollBars="Vertical">
                  <asp:Table ID="Table1" runat="server" Width="100%">
                      <asp:TableRow runat="server" BackColor="#D73739" BorderStyle="Solid" ForeColor="White">
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="20px" HorizontalAlign="Center"></asp:TableCell>
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="20px" HorizontalAlign="Center"></asp:TableCell>
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="150px" HorizontalAlign="Center">Task</asp:TableCell>
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="310px" HorizontalAlign="Center">Description</asp:TableCell>
                      </asp:TableRow>
                  </asp:Table>
              </asp:Panel>
                
                <br />




               <asp:Button ID="Button5" runat="server" Text="Submit" BackColor="#D73739" BorderStyle="None" CssClass="auto-style1" ForeColor="White" Width="70px" Height="30px" OnClick="Button5_Click" ></asp:Button>
                



                <br />




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
