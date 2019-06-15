<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="costumerMain.aspx.cs" Inherits="automotive_repair_shop.costumerMain" %>

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
                      <li><a href="Profile.aspx">Profile</a></li>
                    <li><a href="logout.aspx">Log Out</a></li>

                  </ul>
                </div><!-- /.navbar-collapse -->
    <div class="clearfix"></div>
              </div><!-- /.container-fluid -->
            </nav>
        </div>
        <div style="width:100%; height:700px">
            <div style="margin-left:25%;margin-right:25%; align-content:center;text-align:center" >
                <div style="width:300px; height:200px;margin-left:25%;margin-right:25%; align-content:center" class="text-center" >


                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#D73739"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Label"></asp:Label>
                    <br />
                    <asp:Panel ID="Panel1" runat="server" Width="300px">
                        <asp:Table ID="Table1" runat="server" Width="300px">
                            <asp:TableRow runat="server" BackColor="#D73739" ForeColor="White">
                                <asp:TableCell runat="server">Tasks</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>


                </div>
                <div style="width:100%;height:400px;">

                 

                    <br />

                 

                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" ForeColor="#D73739">Performed Tasks</asp:Label>
                    <br />
                <asp:Table ID="Table2" runat="server" ForeColor="White" Width="100%">
                    <asp:TableRow runat="server" BackColor="#D73739">
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="100px">Date</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="200px">Task</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="250px">Description</asp:TableCell>
                        <asp:TableCell runat="server" HorizontalAlign="Center" Width="50px">Status</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                 

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

