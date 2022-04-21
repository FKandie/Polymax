<?php include('include/home/header.php'); ?>

    	<section>
		<div class="container">
			<div class="row">
				<?php include('include/home/sidebar.php'); ?>

                    
    <div class="col-sm-9 padding-right">
        
        
        <!-- FlexSlider -->
				 
            
<!-- FlexSlider -->
        
					<div class="features_items"><!--features_items-->
                                            <div>
                                                
                                                
                                                <div class="clearfix"></div>
                                                
                                                
                                            </div><br/></br>
                                            
						<h2 class="title text-center">Latest Projects</h2>

	
<!--php starts here-->
<?php				
				//$filter = isset($_POST['filter']) ? $_POST['filter'] : '';
                if(isset($_POST['filter'])){
                	$filter = $_POST['filter'];
                	$result = mysql_query("SELECT * FROM products where Product like '%$filter%' or Description like '%$filter%' or Category like '%$filter%'");
                    
				}
				
				if (isset($_GET['pageno'])){             
					$pageno = $_GET['pageno'];
				}else { 
					$pageno = 1;         
				}         
				$no_of_records_per_page = 6;         
				$offset = ($pageno-1) * $no_of_records_per_page;$total_pages_sql = "SELECT COUNT(*) FROM products";         
				$result = mysql_query($total_pages_sql);         
				$total_rows = mysql_fetch_array($result)[0];         
				$total_pages = ceil($total_rows / $no_of_records_per_page);



			    $sql = "SELECT * FROM products LIMIT $offset, $no_of_records_per_page";         
			    $res_data = mysql_query($sql); 

				
                
					
				if($result){				
				while($row = mysql_fetch_array($res_data)){  
					
				$prodID = $row["ID"];	
					echo '<ul class="col-sm-4">';
					echo '<div class="product-image-wrapper">
						  <div class="single-products">
						  <div class="productinfo text-center">
					<a href="product-details.php?prodid='.$prodID.'" rel="bookmark" title="'.$row['Product'].'"><img src="reservation/img/products/'.$row['imgUrl'].'" alt="'.$row['Product'].'" title="'.$row['Product'].'" width="150" height="150" /></a>
                    </a>
					
					<h2><a href="product-details.php?prodid='.$prodID.'" rel="bookmark" title="'.$row['Product'].'">'.$row['Product'].'</a></h2>
					<h2>Ksh'.$row['Price'].'</h2>
					<p>Category: '.$row['Category'].'</p>
					
					<a href="product-details.php?prodid='.$prodID.'" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View Details</a>
					</div>';		
					echo '</ul>';			
				}
				}
				?>

<!--php ends here-->

<ul class="pagination">         
	<li><a href="?pageno=1">First</a></li>         
	<li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">             
		<a href="<?php if($pageno <= 1){ echo '#'; }  else { echo "?pageno=".($pageno - 1); } ?>">Prev</a>         
	</li>         
	<li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">             
		<a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>">Next</a>         
	</li>         
	<li><a href="?pageno=<?php echo $total_pages; ?>">Last</a>
	</li>     
</ul> 
</div>
</div>
</div>
</div>
</div>
</section>

<?php include('include/home/footer.php'); ?>