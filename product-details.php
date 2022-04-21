<?php
	include("db.php");
	
	$prodID = $_GET['prodid'];

	if(!empty($prodID)){
		$sqlSelectSpecProd = mysql_query("select * from products where id = '$prodID'") or die(mysql_error());
		$getProdInfo = mysql_fetch_array($sqlSelectSpecProd);
		$prodname= $getProdInfo["Product"];
		$prodcat = $getProdInfo["Category"];
		$prodprice = $getProdInfo["Price"];
		$proddesc = $getProdInfo["Description"];
		$prodimage = $getProdInfo["imgUrl"];
		$prodpdf = $getProdInfo["pdfurl"];
				}
?>
<?php include('include/home/header.php'); ?>
	
	<section>
		<div class="container">
			<div class="row">
				<?php include('include/home/sidebar.php'); ?>
				
                
				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
                            
						
							<img src="reservation/img/products/<?php echo $prodimage; ?>" />	
                                
							</div>
						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
							<h2 class="product"><?php echo $prodname; ?></h2>
								<p>Category: <?php echo $prodcat; ?></p>
				
								<p>Price: <span class="price">Ksh<?php echo $prodprice; ?></span></p>

                                <br>
                                
                                <a class="btn btn-default add-to-cart" id="add-to-cart"><i class="fa fa-shopping-cart"></i>Add to Cart</a>
                                <p class="info hidethis" style="color:red;"><strong>Product Added to Cart!</strong></p>
								<p><b>Description: </b><?php echo $proddesc; ?></p>
								<p><b>Contact Info:</b>0703882818</p>
								<p><b>Email:</b> felixkandie7507@gmail.com</p>
								<div clas="download">
								<a href="previews/<?php echo $prodpdf; ?>" download target="_blank"><h1 style='color:#FFA500; font-size:15px;'>Download preview</h1></a>
								</div>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
				</div>
			</div>
		</div>
		</div>
	</section>
	
	<?php include('include/home/footer.php'); ?>