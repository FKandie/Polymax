<!-- Modal -->
<div class="modal fade" id="checkout_modal" role="dialog">
    <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"><i class="fa fa-shopping-cart text-success fa-lg"></i> Check Out<small class='text-primary'> Billing Information</small></h4>
      </div>
      <div class="modal-body">
        <form action="cart/data.php?q=checkout" method="POST">
            <div class="form-group">
                <label>Firstname</label>
                <input type="text" name="fname" class="form-control" placeholder="(firstname)" required>
            </div>
            <div class="form-group">
                <label>Lastname</label>
                <input type="text" name="lname" class="form-control" placeholder="(lastname)" required>
            </div>
            <div class="form-group">
                <label>phone</label>
                <input type="text" name="phone" class="form-control" placeholder="(eg. 0703882818)" required>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="(eg. youname@gmail.com)" class="form-control">
            </div>
            <div class="form-group">
                <label>Institution</label>
                <input type="text" name="Institution" class="form-control" placeholder="(eg. Eldoret National Polytechnic)" required>
            </div>
            <div class="alert alert-info">
                Mode of Payment: <strong>Mpesa after successful Agreement</strong>
            </div>
            <div class="alert alert-warning">
                *** Please wait for our call/text or email for confirmation. Thank You! ***
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
          </form>
      </div>
    </div>
  </div>
</div>