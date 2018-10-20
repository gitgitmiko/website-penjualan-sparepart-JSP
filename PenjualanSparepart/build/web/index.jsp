<%-- 
    Document   : index
    Created on : 20-Oct-2018, 07:10:14
    Author     : GITGIT
--%>
<%@page import="model.barangModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.penjualanModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan Spare Part</title>
        <style>
	body {background:white;}
	h1 {margin:0;font-size:25;}
	h2 {margin:0;font-size:20;}
	p {text-align:justify; margin:10px 10px 0px 10px;}
	
	a {text-decoration:none;}
	
	#content {width:1000px;overflow:hidden;margin:0px 0px 10px 0px; }
	#kiri {width:550px;height:500px;background:#292929;float:right;
			margin:1px 0px 0px 2px;
			moz-box-shadow: 0 0 5px black;
			webkit-box-shadow: 0 0 5px black;
			box-shadow: 0 0 5px black;}
	
	
	
	
	#kanan {width:250px;height:500px;background:#1e1e1e;float:right;
			margin:1px 2px 0px 0px;
			border-radius:10px;}
	
        #date{margin-left: 200px;}
        
	#footer {background:#313131;width:1192px;height:40px;color:#d4d4d4;
                        text-align:center;font-size:20px;line-height:40px;
                        font-family:chiller;border:2px solid grey;margin:2px 2px 2px 2px;
	}
	#wrap {background:white;width:1200px;margin:auto;overflow:hidden;padding:0px;
                        moz-box-shadow: 0 0 10px black;
                        webkit-box-shadow: 0 0 10px black;
                        box-shadow: 0 0 30px black;}

	#menu {padding:0px 0px 0px 150px;background:black;width:1048px;height:80px;
                        margin:1px;line-height:55px;moz-box-shadow: inset 0 0 5px 5px #888;
                        webkit-box-shadow: inset 0 0 5px 5px#888;
                        box-shadow: inset 0 0 5px 5px #888;}
        
	#menu ul {padding:0;margin:0;list-style:none;float:left;}
	#menu ul li{float:left;font-size:12px;}
	#menu ul li a{;float:left;color:#c5c5c5;padding:12px 20px;text-decoration:none;}
	#menu ul li a:hover {color:white;}
	#menu img {width:250;height:50;padding:15px 0px 10px 170px;}
	
	#menubaru {padding:0px 0px 0px 0px;background:#4b4b4b;width:1198px;height:40px;
                        margin:1px;line-height:55px;moz-box-shadow: inset 0 0 5px 5px #888;
                        webkit-box-shadow: inset 0 0 5px 5px#888;
                        box-shadow: inset 0 0 5px 5px #888;}
	#menubaru ul {padding:0;margin:0;list-style:none;float:left;}
	#menubaru ul li{float:left;font-size:12px;}
	#menubaru ul li a{;float:left;color:#c5c5c5;padding:12px 20px;text-decoration:none;}
	#menubaru ul li a:hover {color:white;}
	#menubaru h1 {line-height:40px;}
	
	</style>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <script>
            $(function(){
                $("#datepicker").datepicker();
            })
            </script>
    </head>

    <% 
    Date today = new Date();    
    
    SimpleDateFormat Date_Format = new SimpleDateFormat("dd/MM/yyy");
    String ddMMyyyy = Date_Format.format(today);
    %>
        
    
    <body>
	<div id="wrap">
		<div id="menu">
			<ul>
                            <li><a href="index.jsp">B E R A N D A</a></li>
                            <li><a href="master_barang.jsp">B A R A N G</a></li>
                            <li><a href="penjualan_barang.jsp">P E N J U A L A N</a></li>
			</ul>	
		</div>
		
	<div id="menubaru"> 
		<h1><marquee>Penjualan Sparepart</marquee></h1>
	</div>
            <div id="date">
                <h2><%=ddMMyyyy%></h2>
            </div>
            
	<div id="content">
		<div id="kanan">
		</div>
                    
            <div id="kiri">
                
            </div>
		
	</div>
		
		<div id="footer"> 
		Copyright &copy; 2018. All Rights Reserved
		</div>
	</div>
</body>
</html>