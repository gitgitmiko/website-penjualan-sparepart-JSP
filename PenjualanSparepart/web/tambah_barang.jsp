<%-- 
    Document   : tambah_barang
    Created on : 20-Oct-2018, 08:57:29
    Author     : GITGIT
--%>

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

	
	#menu {padding:0px 0px 0px 150px;background:black;
                width:1048px;height:80px;margin:1px;line-height:55px;
                moz-box-shadow: inset 0 0 5px 5px #888;
                webkit-box-shadow: inset 0 0 5px 5px#888;
                box-shadow: inset 0 0 5px 5px #888;
}
	#menu ul {padding:0;margin:0;list-style:none;float:left;}
	#menu ul li{float:left;font-size:12px;}
	#menu ul li a{;float:left;color:#c5c5c5;padding:12px 20px;text-decoration:none;}
	#menu ul li a:hover {color:white;}
	#menu img {width:250;height:50;padding:15px 0px 10px 170px;}
	
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
        <title>Penjualan Sparepart</title>
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
        
    <center><h1>Tambah Barang </h1></center>
    <form action="barangController?data=barang&proses=input-barang" method="post">
        <table style="margin:20px auto;">

            <tr>
                <td>Kode Barang</td>
                <td><input type="text" name="kd_brg"></td>
            </tr>
            <tr>
                <td>Nama Barang</td>
                <td><input type="text" name="nama_brg"></td>
            </tr>
            <tr>
                <td>Stok</td>
                <td><input type="text" name="stok"></td>
            </tr>
            <tr>
                <td>Harga Jual</td>
                <td><input type="text" name="harga_jual"></td>
            </tr>
            <tr>
                <td>Harga Beli</td>
                <td><input type="text" name="harga_beli"></td>
            </tr>
            <tr>
                <td>Satuan</td>
                <td><input type="text" name="satuan"></td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td><input type="text" name="kategori"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Tambah"></td>
            </tr>

<!--            <center>
                <a class="tambah" href="barangController?proses=input-barang">Tambah</a>
            </center>-->
        </table>
    </form> 
        </div>

</body>
</html>
</body>
</html>