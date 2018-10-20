<%-- 
    Document   : master_barang
    Created on : 20-Oct-2018, 08:38:01
    Author     : GITGIT
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.barangModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <style>
	body {background:white;}
	h1 {margin:0;font-size:25;}
	h2 {margin:0;font-size:20;}
	p {text-align:justify; margin:10px 10px 0px 10px;}
	
	a {text-decoration:none;}
	
	#footer {background:#313131;width:1192px;height:40px;color:#d4d4d4;
                text-align:center;font-size:20px;line-height:40px;
                font-family:chiller;border:2px solid grey;margin:2px 2px 2px 2px;;
	}
	#wrap {background:white;width:1200px;margin:auto;overflow:hidden;padding:0px;
                moz-box-shadow: 0 0 10px black;
                webkit-box-shadow: 0 0 10px black;
                box-shadow: 0 0 30px black;}
        
        #tambah {background:red;width: 88px;height:20px;float: right;margin-right: 295px;}
        #tambah a:hover {color:white;}
        
	#menu {padding:0px 0px 0px 150px;background:black;
                width:1048px;height:80px;margin:1px;line-height:55px;
                moz-box-shadow: inset 0 0 5px 5px #888;
                webkit-box-shadow: inset 0 0 5px 5px#888;
                box-shadow: inset 0 0 5px 5px #888;
}
	#menu ul {padding:0;margin:0;list-style:none;float:left;}
	#menu ul li{float:left;font-size:12px;}
	#menu ul li a{float:left;color:#c5c5c5;padding:12px 20px;text-decoration:none;}
	#menu ul li a:hover {color:white;}
	
	#menubaru {padding:0px 0px 0px 0px;background:#4b4b4b;width:1198px;
                   height:40px;margin:1px;line-height:55px;moz-box-shadow: inset 0 0 5px 5px #888;
                   webkit-box-shadow: inset 0 0 5px 5px#888;
                   box-shadow: inset 0 0 5px 5px #888;
}
	#menubaru ul {padding:0;margin:0;list-style:none;float:left;}
	#menubaru ul li{float:left;font-size:12px;}
	#menubaru ul li a{;float:left;color:#c5c5c5;padding:12px 20px;text-decoration:none;}
	#menubaru ul li a:hover {color:white;}
	#menubaru h1 {line-height:40px;}
	
	</style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan Spare Part</title>
    </head>

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
    <center><h1>Penjualan SparePart</h1></center>
    <table style="margin:20px auto;" border="1">
        <div id="tambah">
            <center>
            <a href="barangController?proses=input-barang">Tambah</a>
        </center>
        </div>
        
        <tr>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Stok</th>
            <th>Harga Jual</th>
            <th>Harga Beli</th>
            <th>Satuan</th>
            <th>Kategori</th>
            <th>Pengaturan</th>
        </tr>
        <%
            barangModel km = new barangModel();
            List<barangModel> data = new ArrayList<barangModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        <tr>

            <td><%=data.get(x).getKd_brg()%></td>
            <td><%=data.get(x).getNama_brg()%></td>
            <td><%=data.get(x).getStok()%></td>
            <td><%=data.get(x).getHarga_jual()%></td>
            <td><%=data.get(x).getHarga_beli()%></td>
            <td><%=data.get(x).getSatuan()%></td>
            <td><%=data.get(x).getKategori()%></td>
            <td>
                <a href="barangController?proses=edit-barang&id=<%=data.get(x).getKd_brg()%>">Edit</a>

                <a href="barangController?proses=hapus-barang&id=<%=data.get(x).getKd_brg()%>">Hapus</a>
            </td>
        </tr>
        <%}%>

    </table>
    
    <div id="footer"> 
		Copyright &copy; 2018. All Rights Reserved
		</div>
    
        </div>
    <!--         <a href="penjualanController?proses=menuutama">data_penjual-->
</body>
</html>