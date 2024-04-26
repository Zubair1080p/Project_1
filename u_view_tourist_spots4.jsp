<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Booking Status</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-yanone.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>

<style type="text/css">
<!--
.style9 {font-size: 18px; }
.style13 {font-family: "Times New Roman", Times, serif}
.style14 {color: #000000}
.style16 {font-size: 20px; color: #000000; }
.style17 {color: #FF0000}
.style18 {font-size: 25px; font-family: "Times New Roman", Times, serif; color: #FF0000; }
.style19 {font-size: 20px}
.style20 {color: #0000FF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Hybrid Recommender System for Tourism Based on Big Data and AI A Conceptual Framework</a></h1>
      </div>
     
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="a_login.jsp"><span>Admin</span></a></li>
          <li><a href="s_login.jsp"><span>Service Provider</span></a></li>
          <li><a href="v_login.jsp"><span>Vehicle SP</span></a></li>
          <li class="active"><a href="u_login.jsp"><span>End User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center">Booking Status</h2>
		  <p>&nbsp;</p>
		  
		  







<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
            
<%

			   
    try
	{
			int amount1 =0,amount2 =0,pprice=0,uamount=0,sub=0;
			int accno=0;
  			String s1,s2,s3,s4;
			String loc=request.getParameter("location");
			String sp=request.getParameter("sp");
			
			String vname=request.getParameter("vname");
			String vsp=request.getParameter("vsp");
			
			String distance=request.getParameter("distance");
			String amt=request.getParameter("amount");
			
			String user=(String)application.getAttribute("user");
			
			
			Statement stmt = connection.createStatement();
			String sql="SELECT * FROM account where user='"+user+"' ";
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			  uamount=Integer.parseInt(rs.getString(8));
			
			
								String sql2="SELECT vprice FROM vehicles where vname='"+vname+"' and user='"+vsp+"' ";
								ResultSet rs2 =stmt.executeQuery(sql2);
								if(rs2.next()==true)
								{
								
										
										pprice=Integer.parseInt(rs2.getString(1))*Integer.parseInt(distance);
										
										if(pprice>uamount)
										{
											

%>
   <span class="style13"> <span class="style18">Insufficiant Amount !!!</span> <br /> 
   <span class="style18">Still need <%= (pprice-uamount)%>Rs</span> </span> 
   
     <p><a href="u_add_money.jsp?type=<%="four"%>" class="style12 style19">Add Amount</a></p>
	 <p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back </a></p>

<%

                                         }
										else
										{
												
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												
												String sql22="Update account set amount='"+leftamount+"'  where user='"+user+"' ";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												
												SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
												SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
												Date now = new Date();
												String strDate = sdfDate.format(now);
												String strTime = sdfTime.format(now);
												String dt = strDate + "   " + strTime;
												
												     
																									
												PreparedStatement ps1=connection.prepareStatement("insert into v_book(loc,user,date,price,sp,vname,sp2) values(?,?,?,?,?,?,?)");
														ps1.setString(1,loc);
														ps1.setString(2,user);
														ps1.setString(3,dt);
														ps1.setInt(4,pprice);
														ps1.setString(5,vsp);
														ps1.setString(6,vname);
														ps1.setString(7,sp);
														
														
                                                     int x=ps1.executeUpdate();
													 if(x>0) {
													 
											     PreparedStatement ps2=connection.prepareStatement("insert into spot_book(loc,user,date,price,sp,vname,vsp) values(?,?,?,?,?,?,?)");
														ps2.setString(1,loc);
														ps2.setString(2,user);
														ps2.setString(3,dt);
														ps2.setInt(4,pprice);
														ps2.setString(5,sp);
														ps2.setString(6,vname);
														ps2.setString(7,vsp);
														ps2.executeUpdate();
														
													 
											  String task="Spot Booked";
											  String strQuery222 = "insert into transaction(user,loc,task,price,dt) values('"+user+"','"+loc+"','"+task+"','"+pprice+"','"+dt+"')";
											  connection.createStatement().executeUpdate(strQuery222);
											  
											  Statement stmt9 = connection.createStatement();
											  String sql9="SELECT rank FROM spots where user='"+sp+"' and loc='"+loc+"' ";
											  ResultSet rs9 =stmt9.executeQuery(sql9);
											  if(rs9.next()==true)
											  {
											    int rk = Integer.parseInt(rs9.getString(1));
												
												rk = rk+1;
												
											    String sql223 = "Update spots set rank='"+rk+"' where user='"+sp+"' and loc='"+loc+"' ";
											    Statement stmt223 = connection.createStatement();
											    stmt22.executeUpdate(sql223);
											  }	 
													   
					
					
																   
%>
     <p align="center" class="style16 style9 style13 style20">You Have Successfully Booked the Spot with Vehicle</p>
     <p>&nbsp;</p>
     <p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back </a></p>
     <br />
<%
															 }
													
																
											}
								
						
									}
					
					}
					
					else
					{
%>
     <p align="center" class="style16 style17 style9 style14">Account Not Found. Please Create Account First.</p>
     <p align="right"><a href="u_view_tourist_spots.jsp" class="style9">Back </a></p>
     <br />
<%						
						
						
					}
									

					
		
		
		
		connection.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}

%>















		  
		  
		  
		  
		  
		  
         
          
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span><span> </span>MENU</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="u_main.jsp"><span>User Main</span></a></li>
            <li><a href="u_login.jsp"><span>Log Out</span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
