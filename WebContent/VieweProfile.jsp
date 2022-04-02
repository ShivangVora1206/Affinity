<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "Credentials.Creds" %>
<%
String EMAIL = request.getParameter("email");
Connection con = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/affinityfinder","root","");

}catch(Exception e){
	e.printStackTrace();
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Profile Page</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    
    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <div class="brand-logo">
                <a href="index.html">
                    <b class="logo-abbr"><img src="images/logo.png" alt=""> </b>
                    <span class="logo-compact"><img src="./images/logo-compact.png" alt=""></span>
                    <span class="brand-title">
                        <img src="images/logo-text.png" alt="">
                    </span>
                </a>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">    
            <div class="header-content clearfix">
                
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <div class="header-left">
                    <div class="input-group icons">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                        
                    </div>
                </div>
                <div class="header-right">
                    <ul class="clearfix">
                        
                        
                       
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <span class="activity active"></span>
                                <img src="images/user/1.png" height="40" width="40" alt="">
                            </div>
                            <div class="drop-down dropdown-profile   dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="app-profile.html"><i class="icon-user"></i> <span>Profile</span></a>
                                        </li>
                                        <li>
                                            <a href="email-inbox.html"><i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill badge-primary">3</div></a>
                                        </li>
                                        
                                        <hr class="my-2">
                                        <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li>
                                        <li><a href="page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="nk-sidebar">           
            <div class="nk-nav-scroll">
                <ul class="metismenu" id="menu">
                    <li class="nav-label">Navigation</li>
                    <li>
                        <a  href="showMatches.jsp" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">Show Matches</span>
                        </a></li>
                    <li>
                        <a  href="VieweProfile.jsp?email=<%= Creds.getEmail() %>" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">View Profile</span>
                        </a></li>
                    <li>
                        <a  href="Login.html" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">Log Out</span>
                        </a></li>
                    <li>
                        <a  href="index.html" aria-expanded="false">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">Sign Out</span>
                        </a></li>
                    
                </ul>
            </div>
        </div>
        <!--**********************************
            Sidebar end
        ***********************************-->

        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->
<%
try{
	String query = "select * from userdetails where email=?";
	PreparedStatement pstmt = con.prepareStatement(query);
	pstmt.setString(1, EMAIL);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){%>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="media align-items-center mb-4">
                                    <img class="mr-3" src="images/avatar/11.png" width="80" height="80" alt="">
                                    <div class="media-body">
                                        <h3 class="mb-0"><%=rs.getString(2) %> <%=rs.getString(3) %></h3>
                                        <p class="text-muted mb-0"><%=rs.getString(13) %></p>
                                    </div>
                                </div>
                                
                                <div class="row mb-5">
                                 
                                </div>

                                <h4>Gender</h4>
                                <p class="text-muted"><%= rs.getString(6) %></p>
                                <ul class="card-profile__info">
                                    <li class="mb-1"><h4>Mobile</h4><p class="text-muted"><%= rs.getString(11) %></p></li>
                                    <br><li><h4>Email</h4> <p class="text-muted"><%= rs.getString(4) %></p></li>
                                    <br><li><h4>Religion</h4> <p class="text-muted"><%= rs.getString(7) %></p></li>
                                    <br><li><h4>Age</h4> <p class="text-muted"><%= rs.getInt(8) %></p></li>
                                    <br><li><h4>Looking for</h4> <p class="text-muted"><%= rs.getString(9) %></p></li>
                                    <br><li><h4>Community</h4> <p class="text-muted"><%= rs.getString(10) %></p></li>
                                </ul>
                                <h4>About Me</h4>
                                <p class="text-muted"><%= rs.getString(12) %></p>
                                <ul class="card-profile__info">
                                    <li class="mb-1"><strong class="text-dark mr-4">Mobile</strong> <span><%=rs.getString(11) %></span></li>
                                    <li><strong class="text-dark mr-4">Email</strong> <span><%=rs.getString(4) %></span></li>
                                </ul>
                            </div>
                        </div>  
                    </div>
                    </div>

                            <%}
}catch(Exception e){
	e.printStackTrace();
}

%>
     

            
        
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->

        <!--**********************************
            Footer end
        ***********************************-->
    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <script src="plugins/common/common.min.js"></script>
    <script src="js/custom.min.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/gleek.js"></script>
    <script src="js/styleSwitcher.js"></script>

</body>

</html>