<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAppointment.aspx.cs" Inherits="automotive_repair_shop.NewAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Appointment</title>
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
            color: #333;
            background-color: #fff;
            border-color: #ccc;
            margin-right: 0;
        }
        .auto-style2 {
            width: 350px;
            height: 100%;
            float: left;
        }
        .auto-style3 {
            color: #333;
            background-color: #fff;
            border-color: #ccc;
            margin-right: 0;
            margin-bottom: 0;
        }
    </style>
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
        <div style="width:100%; height:600px">
           <div style="width:150px;height:100%; margin-left:80px; line-height:30px;float:left">
               <br />
               Costumer ID/Email:<br />
               <br />
               ID:<br />
               Email:<br />
               Name:<br />
               Car Model:<br />
               Plate Number:<br />
               <br />
               <br />
               Appointme Date:<br />
               Appointment Time:<br />
           </div>
           <div style="width:250px;height:100%; line-height:30px;float:left">

               <br />
               <asp:TextBox ID="TextBox10" runat="server" Width="201px" Height="25px"></asp:TextBox>
               <br />
               <asp:Button ID="Button4" runat="server" Text="Submit" BackColor="#D73739" BorderStyle="None" CssClass="auto-style1" ForeColor="White" Width="70px" Height="30px" OnClick="Button4_Click"></asp:Button>
                
               <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
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
               <br />
               <br />
               <asp:TextBox ID="TextBox11" runat="server" Width="201px" Height="25px" ReadOnly="True"></asp:TextBox>
               <asp:Button ID="Button2" runat="server" Text="..." BackColor="#D73739" BorderStyle="None" CssClass="auto-style1" ForeColor="White" Width="26px" Height="30px" OnClick="Button2_Click"></asp:Button>
                
               <br />
               <asp:DropDownList ID="DropDownList1" runat="server" Width="101px">
                   <asp:ListItem>7</asp:ListItem>
                   <asp:ListItem>8</asp:ListItem>
                   <asp:ListItem>9</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
                   <asp:ListItem>11</asp:ListItem>
                   <asp:ListItem>12</asp:ListItem>
                   <asp:ListItem>13</asp:ListItem>
                   <asp:ListItem>14</asp:ListItem>
                   <asp:ListItem>15</asp:ListItem>
                   <asp:ListItem>16</asp:ListItem>
                   <asp:ListItem>17</asp:ListItem>
                   <asp:ListItem>18</asp:ListItem>
                   <asp:ListItem>19</asp:ListItem>
               </asp:DropDownList>
               <asp:DropDownList ID="DropDownList2" runat="server" Width="99px">
                   <asp:ListItem>00</asp:ListItem>
                   <asp:ListItem>10</asp:ListItem>
                   <asp:ListItem>20</asp:ListItem>
                   <asp:ListItem>30</asp:ListItem>
                   <asp:ListItem>40</asp:ListItem>
                   <asp:ListItem>50</asp:ListItem>
               </asp:DropDownList>
               <br />
               <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False">
                   <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                   <NextPrevStyle VerticalAlign="Bottom" />
                   <OtherMonthDayStyle ForeColor="#808080" />
                   <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                   <SelectorStyle BackColor="#CCCCCC" />
                   <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                   <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                   <WeekendDayStyle BackColor="#FFFFCC" />
               </asp:Calendar>

           </div>
          <div style="margin-left:30px; line-height:30px;" class="auto-style2">

              <br />
              Task:&nbsp;&nbsp;
               <asp:TextBox ID="TextBox12" runat="server" Width="248px" Height="25px"></asp:TextBox>
               <asp:Button ID="Button3" runat="server" Text="ADD" BackColor="#D73739" BorderStyle="None" CssClass="auto-style1" ForeColor="White" Width="45px" Height="28px" CausesValidation="False" OnClick="Button3_Click" UseSubmitBehavior="False"></asp:Button>

               <br />
 

              <asp:Label ID="Label9" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
 

              <br />
              <asp:Panel ID="Panel1" runat="server" Height="231px" ScrollBars="Vertical">
                  <asp:Table ID="Table1" runat="server" Width="100%">
                      <asp:TableRow runat="server" BackColor="#D73739" BorderStyle="Solid" ForeColor="White">
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="20px"></asp:TableCell>
                          <asp:TableCell runat="server" BorderColor="Black" BorderStyle="None" Width="280px">Task</asp:TableCell>
                      </asp:TableRow>
                  </asp:Table>
              </asp:Panel>
                
               <asp:Label ID="Label10" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
               <br />
                <asp:Button ID="Button5" runat="server" Text="Submit" BackColor="#D73739" BorderStyle="None" CssClass="auto-style3" ForeColor="White" Width="103px" Height="28px" CausesValidation="False" UseSubmitBehavior="False" OnClick="Button5_Click"></asp:Button>

               

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
