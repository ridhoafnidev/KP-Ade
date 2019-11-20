<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  /*text-align: left;    */
}
table#t01 {
  width: 100%;    
  background-color: #f1f1c1;
}

</style>

<!-- <label style="font-size:17px;font-family:'Times New Roman', Times, serif;">
	Barang atau pekerjaan tersebut telah diterima dan diselesaikan dengan baik oleh :
</label> -->

<div id="centrar">
 <b><p style="text-align: center;font-size:12px;">
 	DAFTAR INVENTARIS KANTOR & PABRIK<br>
 	PT. KUNANGO JANTAN CABANG PEKANBARU<br>
 	ATAS DASAR DEPARTEMENT PENGGUNA<br>
 	POSISI PER Maret 2019<p></p>
</div>

 <table style="width:100%" border="1" style='font-family:"Courier New", Courier, monospace; font-size:10%'>
  <tr>
    <th>No.</th>
    <th>Jenis Barang</th> 
    <th>Tyoe Merk</th>
    <th>Quantity</th>
    <th>Capacity</th>
    <th>Harga</th>
    <th>Tahun Perolehan</th>
    <th>Jumlah</th>
    <th>Status</th>
    <th>Keterangan</th>
    <th>Departement</th>
    <th>ID Asset</th>
    <th>Code Asset</th>
  </tr>
  <?php 

$no=1; foreach ($modelasset as $value) {?>
	<tr>
	    <td><?php echo $no; ?></td>
	    <td><?php echo $value['jenis_barang']?></td>
	    <td><?php echo $value['type_merk']?></td> 
	    <td><?php echo $value['quantity']?></td> 
	    <td><?php echo $value['capacity']?></td> 
	    <td><?php echo $value['harga']?></td> 
	    <td><?php echo $value['tahun_perolehan']?></td> 
	    <td><?php echo $value['jumlah']?></td> 
	    <td><?php echo $value['status']?></td> 
	    <td><?php echo $value['keterangan']?></td> 
	    <td><?php echo $value['departement']?></td> 
	    <td><?php echo $value['id_asset']?></td> 
	    <td><?php echo $value['code_asset']?></td> 
  	</tr>
	<?php 
	$no++; }
 ?>
  
</table>
<br>
<p style="margin-left:600px; font-size:10px;font-family:'Times New Roman', Times, serif;">
	Dibuat Oleh, <br> Supervisor GA 
</p>
<br>
<p style="margin-left:600px; font-size:10px;font-family:'Times New Roman', Times, serif;">
	( Siti Afsah, SH ) 
</p>
