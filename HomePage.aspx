<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ILSProject_template_blank.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- CSS Files -->
    <link href="../assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
    <link href="DB%20assets/css/black-dashboard.css" rel="stylesheet" />
    <link href="DB%20assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="DB%20assets/css/black-dashboard.min.css" rel="stylesheet" />

    <div class="container-fluid">
        
        <div class="row">
            <div class="col-md-7 ms-md-auto">
                <asp:Button ID="btnNotification" runat="server" Text="Notifications" BackColor="#E27F36" ForeColor="White" OnClick="btnNotification_Click" />
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px" DataSourceID="SqlDataSource1" ForeColor="Black" CellPadding="4" GridLines="Horizontal">
                    <AlternatingItemStyle BackColor="#4292E0" />
                    <EditItemStyle BackColor="#0099FF" />
                    <FooterStyle BackColor="#FF6600" Font-Names="Bernard MT Condensed" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <ItemTemplate>
                        notification:
                        <asp:Label ID="notificationLabel" runat="server" Text='<%# Eval("notification") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dash_heroDBConnectionString %>" SelectCommand="SELECT [notification] FROM [notification_tbl]"></asp:SqlDataSource>
                <asp:Button ID="btnClose" runat="server" Text="Close" BackColor="#AEC440" ForeColor="White" OnClick="btnClose_Click" />
            </div>

     <div class="wrapper">
    <!--<div class="sidebar">-->
    
     <!-- <div class="sidebar-wrapper">
        <div class="logo">
          <a href="javascript:void(0)" class="simple-text logo-normal">
            DashHero
          </a>
        </div>
        <ul class="nav">
          <li class="active ">
          </li>
          <li>
            <a href="./icons.html">
              <i class="tim-icons icon-atom"></i>
              <p>Icons</p>
            </a>
          </li>
          <li>
            <a href="./map.html">
              <i class="tim-icons icon-pin"></i>
              <p>Maps</p>
            </a>
          </li>
          <li>
            <a href="./notifications.html">
              <i class="tim-icons icon-bell-55"></i>
              <p>Notifications</p>
            </a>
          </li>
          <li>
            <a href="./user.html">
              <i class="tim-icons icon-single-02"></i>
              <p>User Profile</p>
            </a>
          </li>
          <li>
            <a href="./tables.html">
              <i class="tim-icons icon-puzzle-10"></i>
              <p>Table List</p>
            </a>
          </li>
          <li>
            <a href="./typography.html">
              <i class="tim-icons icon-align-center"></i>
              <p>Typography</p>
            </a>
          </li>
          <li>
            <a href="./rtl.html">
              <i class="tim-icons icon-world"></i>
              <p>RTL Support</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="./upgrade.html">
              <i class="tim-icons icon-spaceship"></i>
              <p>Upgrade to PRO</p>
            </a>
          </li>
        </ul>
      </div> 
    </div>-->
    <div class="main-panel">
         
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto">
              <li class="dropdown nav-item">
                <a href="javascript:void(0)" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="notification d-none d-lg-block d-xl-block"></div>
                  <i class="tim-icons icon-sound-wave"></i>
                  <p class="d-lg-none">
                    Notifications
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-menu-right dropdown-navbar">
                  <li class="nav-link"><a href="#" class="nav-item dropdown-item">Mike John responded to your email</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">You have 5 more tasks</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Your friend Michael is in town</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another notification</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Another one</a></li>
                </ul>
              </li>
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="../assets/img/anime3.png" alt="Profile Photo">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Profile</a></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Settings</a></li>
                  <li class="dropdown-divider"></li>
                  <li class="nav-link"><a href="javascript:void(0)" class="nav-item dropdown-item">Log out</a></li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
         <div class="row">
            <div class="col-md-2">
                <div class="card" style="width: 13rem">
                    <img src="img/email.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <asp:LinkButton ID="LinkButton1" runat="server">Email</asp:LinkButton>

                    </div>
                </div>
                <br />
            </div>
            <div class="col-md-4">
                <div class="card" style="width: 13rem">
                    <img src="img/communications.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <asp:LinkButton ID="LinkButton2" runat="server">Communications</asp:LinkButton>

                    </div>
                </div>
                <br />
            </div>
            <div class="col-md-5 ms-md-auto">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="370px" NextPrevFormat="FullMonth" Width="582px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                <br />
                <asp:TextBox ID="txtNotify" runat="server"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            </div>

            <div class="row">
                <div class="col-md-2">
                    <div class="card" style="width: 13rem">
                        <img src="img/performance.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <asp:LinkButton ID="LinkButton3" runat="server">Performance Tracking</asp:LinkButton>

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 13rem">
                        <img src="img/hr_management.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <asp:LinkButton ID="LinkButton4" runat="server">HR Management</asp:LinkButton>
                        </div>
                    </div>
                </div>
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div> 

        </div>
        <br />
      
                <footer class="footer">
                <div class="container-fluid">
                  <ul class="nav">
                    <li class="nav-item">
                      <a href="javascript:void(0)" class="nav-link">
                        About Us
                      </a>
                    </li>
                    <li class="nav-item">
                      <a href="javascript:void(0)" class="nav-link">
                        Blog
                      </a>
                    </li>
                  </ul>
                  <div class="copyright">
                    ©
                    <script>
                        document.write(new Date().getFullYear())
                    </script>2018 made with <i class="tim-icons icon-heart-2"></i> by
                    <a href="javascript:void(0)" target="_blank">Creative Tim</a> for a better web.
                  </div>
                </div>
              </footer>
            </div>

        </div>
            
    </div>
    </div>
</div>


</asp:Content>
