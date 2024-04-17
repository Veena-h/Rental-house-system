<%@page import="com.model.form_model"%>
<%@page import="com.connection.form_conn"%>
<%@page import="com.entity.form_entity"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Quixlab - Bootstrap Admin Dashboard Template by Themefisher.com</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <style type="text/css">
    datalist {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  writing-mode: vertical-lr;
  width: 200px;
}

option {
  padding: 0;
}

input[type="range"] {
  width: 200px;
  margin: 0;
}
    
    </style>

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
                
                <!-- <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                 <div class="header-left">
                    <div class="input-group icons">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
                        </div>
                        <input type="search" class="form-control" placeholder="Search Dashboard" aria-label="Search Dashboard">
                        <div class="drop-down animated flipInX d-md-none">
                            <form action="#">
                                <input type="text" class="form-control" placeholder="Search">
                            </form>
                        </div>
                    </div>
                </div>  -->
                
                
               
                <div class="header-right">
                    <ul class="clearfix">
                            <%--  <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <span class="activity active"><i class="icon-user"></i><%=name %>></span>
                                <!-- <img src="images/user/1.png" height="40" width="40" alt=""> -->
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body"> --%>
                                
                               
                                    <ul >
                                        <li>
                                            <%-- <a href="app-profile.jsp?id=<%=e.getId()%>>"><i class="icon-user"></i> <span><%=name %></span></a> --%>
                                        </li>
                                       <!--  <li>
                                            <a href="javascript:void()">
                                                <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                            </a>
                                        </li> -->
                                        
                                        <hr class="my-2 ">
                                        <!-- <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li> -->
                                        <li><a href="logout_user" ><i class="icon-key"></i> <span>Logout</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                          
                   
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">3 New Messages</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-1">3</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul> -->
                                       <!--  <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/1.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Saiful Islam</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li> -->
                                        <!-- <li class="notification-unread">
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/2.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Adam Smith</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Can you do me a favour?</div>
                                                </div>
                                            </a>
                                        </li> -->
                                       <!--  <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/3.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Barak Obama</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                                </div>
                                            </a>
                                        </li> -->
                                        <!-- <li>
                                            <a href="javascript:void()">
                                                <img class="float-left mr-3 avatar-img" src="images/avatar/4.jpg" alt="">
                                                <div class="notification-content">
                                                    <div class="notification-heading">Hilari Clinton</div>
                                                    <div class="notification-timestamp">08 Hours ago</div>
                                                    <div class="notification-text">Hello</div>
                                                </div>
                                            </a>
                                        </li> -->
                                    </ul>
                                    
                                </div>
                            </div>
                        </li>
                        
                        
                        <li class="icons dropdown"><a href="javascript:void(0)" data-toggle="dropdown">
                                <i class="mdi mdi-bell-outline"></i>
                                <span class="badge badge-pill gradient-2">3</span>
                            </a>
                            <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                                <div class="dropdown-content-heading d-flex justify-content-between">
                                    <span class="">2 New Notifications</span>  
                                    <a href="javascript:void()" class="d-inline-block">
                                        <span class="badge badge-pill gradient-2">5</span>
                                    </a>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events near you</h6>
                                                    <span class="notification-text">Within next 5 days</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Started</h6>
                                                    <span class="notification-text">One hour ago</span> 
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Event Ended Successfully</h6>
                                                    <span class="notification-text">One hour ago</span>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void()">
                                                <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                                <div class="notification-content">
                                                    <h6 class="notification-heading">Events to Join</h6>
                                                    <span class="notification-text">After two days</span> 
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </li>
                       <!--  <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>English</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="javascript:void()">English</a></li>
                                        <li><a href="javascript:void()">Dutch</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li> -->
                        
                        <%
                                     HttpSession session2=request.getSession();
                                	String name=(String)request.getSession().getAttribute("name");
                                	 try{
                                     	
                                         
                                         form_model f=new form_model(form_conn.getconnection());
                                       		  List<form_entity> f1= f.select();
                                       		  
                                       		  for(form_entity e:f1)
                                       		  {
                                       
                                       
                                       
                                      
                                   %>
                        <li class="icons dropdown">
                            <div class="user-img c-pointer position-relative"   data-toggle="dropdown">
                                <%-- <span class="activity active"><i class="icon-user"></i><%=name %>></span> --%>
                                <!-- <img src="images/user/1.png" height="40" width="40" alt=""> -->
                            </div>
                            <div class="drop-down dropdown-profile animated fadeIn dropdown-menu">
                                <div class="dropdown-content-body">
                                
                               
                                    <ul>
                                        <li>
                                            <a href="app-profile.jsp?id=<%=e.getId()%>>"><i class="icon-user"></i> <span><%=name %></span></a>
                                        </li>
                                       <!--  <li>
                                            <a href="javascript:void()">
                                                <i class="icon-envelope-open"></i> <span>Inbox</span> <div class="badge gradient-3 badge-pill gradient-1">3</div>
                                            </a>
                                        </li> -->
                                        
                                        <hr class="my-2">
                                        <!-- <li>
                                            <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                        </li> -->
                                        <li><a href="logout_user"><i class="icon-key"></i> <span>Logout</span></a></li>
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
                    <li class="nav-label">Dashboard</li>
                    <li>
                        <a  href="dashboard_main.jsp">
                            <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                        </a>
                       <!--  <ul aria-expanded="false">
                            <li><a href="./index.html">Home 1</a></li>
                            <li><a href="./index-2.html">Home 2</a></li>
                        </ul> -->
                    </li>
                    
                    <!-- <li class="mega-menu mega-menu-sm">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt menu-icon"></i><span class="nav-text">Layouts</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./layout-blank.html">Blank</a></li>
                            <li><a href="./layout-one-column.html">One Column</a></li>
                            <li><a href="./layout-two-column.html">Two column</a></li>
                            <li><a href="./layout-compact-nav.html">Compact Nav</a></li>
                            <li><a href="./layout-vertical.html">Vertical</a></li>
                            <li><a href="./layout-horizontal.html">Horizontal</a></li>
                            <li><a href="./layout-boxed.html">Boxed</a></li>
                            <li><a href="./layout-wide.html">Wide</a></li>
                            
                            
                            <li><a href="./layout-fixed-header.html">Fixed Header</a></li>
                            <li><a href="layout-fixed-sidebar.html">Fixed Sidebar</a></li>
                        </ul>
                    </li> -->
                    
                   <!--  <li class="nav-label">Apps</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i> <span class="nav-text">Email</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./email-inbox.html">Inbox</a></li>
                            <li><a href="./email-read.html">Read</a></li>
                            <li><a href="./email-compose.html">Compose</a></li>
                        </ul>
                    </li> -->
                    <!-- <li>
                        <a href="app-profile.jsp" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">Profile</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./app-profile.html">Profile</a></li>
                            <li><a href="./app-calender.html">Calender</a></li>
                        </ul>
                    </li>
                     -->
                  <!--   <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i> <span class="nav-text">Charts</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./chart-flot.html">Flot</a></li>
                            <li><a href="./chart-morris.html">Morris</a></li>
                            <li><a href="./chart-chartjs.html">Chartjs</a></li>
                            <li><a href="./chart-chartist.html">Chartist</a></li>
                            <li><a href="./chart-sparkline.html">Sparkline</a></li>
                            <li><a href="./chart-peity.html">Peity</a></li>
                        </ul>
                    </li> -->
                    
                    
                    <!-- <li class="nav-label">UI Components</li>
                    <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-grid menu-icon"></i><span class="nav-text">UI Components</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./ui-accordion.html">Accordion</a></li>
                            <li><a href="./ui-alert.html">Alert</a></li>
                            <li><a href="./ui-badge.html">Badge</a></li>
                            <li><a href="./ui-button.html">Button</a></li>
                            <li><a href="./ui-button-group.html">Button Group</a></li>
                            <li><a href="./ui-cards.html">Cards</a></li>
                            <li><a href="./ui-carousel.html">Carousel</a></li>
                            <li><a href="./ui-dropdown.html">Dropdown</a></li>
                            <li><a href="./ui-list-group.html">List Group</a></li>
                            <li><a href="./ui-media-object.html">Media Object</a></li>
                            <li><a href="./ui-modal.html">Modal</a></li>
                            <li><a href="./ui-pagination.html">Pagination</a></li>
                            <li><a href="./ui-popover.html">Popover</a></li>
                            <li><a href="./ui-progressbar.html">Progressbar</a></li>
                            <li><a href="./ui-tab.html">Tab</a></li>
                            <li><a href="./ui-typography.html">Typography</a></li>
                         </ul>
                    </li> -->
                    
                    
                    <!-- <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-layers menu-icon"></i><span class="nav-text">Components</span>
                        </a>
                        <ul aria-expanded="false"> 
                            <li><a href="./uc-nestedable.html">Nestedable</a></li>
                            <li><a href="./uc-noui-slider.html">Noui Slider</a></li>
                            <li><a href="./uc-sweetalert.html">Sweet Alert</a></li>
                            <li><a href="./uc-toastr.html">Toastr</a></li>
                        </ul>
                    </li> -->
                    
                   <!--  <li>
                        <a href="widgets.html" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text">Widget</span>
                        </a>
                    </li> -->
                    
                   <!--  <li class="nav-label">Forms</li> -->
                    
                    <li>
                        <a  href="form-validation.jsp" >
                            <i class="icon-note"></i><span class="nav-text">Forms</span>
                        </a>
                        <!-- <ul aria-expanded="false">
                            <li><a href="./form-basic.html">Basic Form</a></li>
                            <li><a href="./form-validation.html">Form Validation</a></li>
                            <li><a href="./form-step.html">Step Form</a></li>
                            <li><a href="./form-editor.html">Editor</a></li>
                            <li><a href="./form-picker.html">Picker</a></li>
                        </ul> -->
                    </li>
                    
                    
                   <!--  <li class="nav-label">Table</li> -->
                    <li>
                        <a  href="table-basic.jsp" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Property-Details</span>
                        </a>
                       <!--  <ul aria-expanded="false">
                            <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul> -->
                    </li>
                    
                    <li>
                        <a  href="Agent_info_table.jsp" aria-expanded="false">
                            <i class="icon-menu menu-icon"></i><span class="nav-text">Agents Details</span>
                        </a>
                       <!--  <ul aria-expanded="false">
                            <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul> -->
                    </li>
                    
                    <li>
                        <a  href="user_request.jsp" aria-expanded="false">
                            <i class="icon-envelope menu-icon"></i><span class="nav-text">Request</span>
                        </a>
                       <!--  <ul aria-expanded="false">
                            <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                            <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                        </ul> -->
                    </li>
                    
                    
                    <!-- <li class="nav-label">Pages</li> -->
                    <!-- <li>
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-notebook menu-icon"></i><span class="nav-text">Pages</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="./page-login.html">Login</a></li>
                            <li><a href="./page-register.html">Register</a></li>
                            <li><a href="./page-lock.html">Lock Screen</a></li> -->
                            <!-- <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                                <ul aria-expanded="false">
                                    <li><a href="./page-error-404.html">Error 404</a></li>
                                    <li><a href="./page-error-403.html">Error 403</a></li>
                                    <li><a href="./page-error-400.html">Error 400</a></li>
                                    <li><a href="./page-error-500.html">Error 500</a></li>
                                    <li><a href="./page-error-503.html">Error 503</a></li>
                                </ul>
                            </li> -->
                            
                            
                            
                            
                            
                            <li>
                        <a href="app-profile.jsp?id=<%=e.getId() %>" aria-expanded="false">
                            <i class="icon-screen-tablet menu-icon"></i><span class="nav-text">Profile</span>
                        </a>
                       <!--  <ul aria-expanded="false">
                            <li><a href="./app-profile.html">Profile</a></li>
                            <li><a href="./app-calender.html">Calender</a></li>
                        </ul> -->
                    </li>
                     <%
                                      		  }
                    }
                		 
                       catch(Exception e1)
                {
                	e1.printStackTrace();
                }
                   
              
                       
                  
                  %>   
                                            
                            
                        </ul>
                    </li>
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

            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-validation">
                                    
                                    
                                    <!--house form  -->
                                    <form class="form-valide" action="house_info_form" method="post" enctype="multipart/form-data">
                                    
                                    
                                    
                                         <!-- property Id -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Property Id: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-confirm-password" name="property_id" placeholder="block.no" required="required">
                                            </div>
                                        </div>
                                        
                                        <!-- name -->    
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-username">Property-Name: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-username" name="property-name" placeholder="name of property" required="required">
                                            </div>
                                        </div>
                                        
                                        
                                       
                                          <!--image 1 -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Images: <span class="text-danger">*</span>
                                            <p class="text-danger">(Image under 65kb)</p>
                                            </label>
                                            
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-email" name="img1" placeholder="Your valid email.." required="required">
                                                
            
                                                
                                            </div>
                                        </div>
                                        
                                        
                                         <!--images 2  -->
                                        <!-- <div class="form-group ">
                                            <label class="col-lg-4 col-form-label" for="val-email">Images:<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-email" name="img2" placeholder="Your valid email.." required="required">
                                            </div>
                                        </div> -->
                                        
                                         <!--images 3 -->
                                       <!--  <div class="form-group ">
                                            <label class="col-lg-4 col-form-label" for="val-email">Images: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-email" name="img3" placeholder="Your valid email.." required="required">
                                            </div>
                                        </div> -->
                                        
                                        
                                       
                                      <!-- <!--property description 
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-password">Property description <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                        <textarea class="form-control" name="property_description" id="textarea" cols="1" rows="7" placeholder="describe about your Property "   required="required"></textarea>
                                    	</div> 
                                        </div> -->
                                        
                                        
                                        
                                      <!-- location -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-suggestions">Location: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-confirm-password" name="location" placeholder="enter Location" required="required">
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        <!-- Facilites -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-suggestions">Amenities:<span class="text-danger">*</span>
                                            </label>
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Water 24/7, ">Water 24/7</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Electricity 24/7, ">Electricity 24/7</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Parking, ">Parking</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Gym facilities, ">Gym facilities</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Swimmimg pool, ">Swimmimg pool</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input" name="facility" value="Fire-system management ">Fire-system management</label>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        <!--property type  -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-skill">Property Type: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <select class="form-control" id="Property Type" name="Property-Type">
                                                    <option name="Property-Type" value="">Please select</option>
                                                    <option name="Property-Type" value="House">House</option>
                                                    <option name="Property-Type" value="Appartment">Appartment</option>
                                                    <option name="Property-Type" value="Farm-House">Farm-House</option>
                                                    <option name="Property-Type" value="2BHK">2BHK</option>
                                                    <option name="Property-Type" value="3BHK">3BHK</option>
                                                   
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <!--area like 350 ms qaure  -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-currency">Area: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-currency" name="Area" placeholder="sq.ft."   required="required">
                                            </div>
                                        </div>
                                        
                                        <!-- Furnishing status -->
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" >Furnishing status : <span class="text-danger">*</span>
                                            </label>
                                          
                                            
                                            
                                            <div class="form-check form-check-inline " >
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input"  name="status" value="Furnishing">Furnishing:</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input"  name="status" value="semi-Furnishing">semi-Furnishing:</label>
                                            </div>
                                            
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label" >
                                                    <input type="checkbox" class="form-check-input"  name="status" value="unFurnishing">unFurnishing:</label>
                                            </div>
                                        </div>
                                        
                                        
                                       
                                        
                                        
                                        <!-- property rent -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-confirm-password">Property Rent: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="temp"   name="rent" required="required"  placeholder="Rs.">
                                                
                                               <!--  <datalist id="markers">
												  <option value="0" label="0"></option>
												  <option value="25"></option>
												  <option value="50"></option>
												  <option value="75"></option>
												  <option value="100" label="100"></option>
												</datalist> -->
                                            </div>
                                        </div>
                                        <!-- <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-website">Beds <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-website" name="beds" placeholder="http://example.com">
                                            </div>
                                        </div>
 -->                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-phoneus">Phone:<span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-phoneus" name="phone" placeholder="91+" required="required">
                                            </div>
                                            
                                            
                                          
                                        </div>
                                        
                                          <!--Agent details  -->
                                       <!--  <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-email">Images: <span class="text-danger">*</span>
                                            <p class="text-danger">(Image under 65kb)</p>
                                            </label>
                                            
                                            <div class="col-lg-6">
                                                <input type="file" class="form-control" id="val-email" name="img1" placeholder="Your valid email.." required="required">
                                                
            
                                                
                                            </div>
                                        </div> -->
                                        
                                        
                                        
                                        
                                         <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-digits">Agent Name/property-Qowner: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-digits" name="agent_name" placeholder="enter property owner name">
                                            </div>
                                        </div> 
                                        
                                        <!--agent email  -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-digits">Agent Email: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="email" class="form-control" id="val-digits" name="agent_email" placeholder="enter email">
                                            </div>
                                        </div> 
                                        
                                        
                                        <!--agent phone  -->
                                        <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-phoneus">Phone: <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="number" class="form-control" id="val-phoneus" name="agent_phone" placeholder="91+" required="required">
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                       <!--  <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-number">Number <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-number" name="val-number" placeholder="5.0">
                                            </div>
                                        </div> -->
                                      <!--   <div class="form-group row">
                                            <label class="col-lg-4 col-form-label" for="val-range">Range [1, 5] <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="val-range" name="val-range" placeholder="4">
                                            </div>
                                        </div> -->
                                        <!-- <div class="form-group row">
                                            <label class="col-lg-4 col-form-label"><a href="#">Terms &amp; Conditions</a>  <span class="text-danger">*</span>
                                            </label>
                                            <div class="col-lg-8">
                                                <label class="css-control css-control-primary css-checkbox" for="val-terms">
                                                    <input type="checkbox" class="css-control-input" id="val-terms" name="val-terms" value="1"> <span class="css-control-indicator"></span> I agree to the terms</label>
                                            </div>
                                        </div> -->
                                        <div class="form-group row">
                                            <div class="col-lg-8 ml-auto">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                               <!-- <a href="#" class="btn btn-primary">Submit</a> -->
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #/ container -->
        </div>
        <!--**********************************
            Content body end
        ***********************************-->
        
        
        <!--**********************************
            Footer start
        ***********************************-->
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Quixlab</a> 2018</p>
            </div>
        </div>
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

    <script src="./plugins/validation/jquery.validate.min.js"></script>
    <script src="./plugins/validation/jquery.validate-init.js"></script>

</body>

</html>