<div class="container-fluid">
                        <br>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active"><?php echo $title_page?></li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
								<!-- form filter -->
								<form>
								  <div class="form-group row">
									<div class="col-sm-10">
									  <button type="submit" class="btn btn-primary">New Data</button>
									</div>
								  </div>
								</form>
								
								<!-- form filter end -->
							</div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>Data Karyawan</div>
                            <div class="card-body">



<form>
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationDefault01">NIK</label>
      <input type="text" class="form-control" id="validationDefault01" placeholder="NIK" value="2020016" required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault02">Name</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Name" required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault02">ID Client</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="ID Client" required>
    </div>
    <!-- <div class="col-md-4 mb-3">
      <label for="validationDefaultUsername">ID Client</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend2">@</span>
        </div>
        <input type="text" class="form-control" id="validationDefaultUsername" placeholder="Username" aria-describedby="inputGroupPrepend2" required>
      </div>
    </div> -->
  </div>

  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationDefault01">NIK</label>
      <input type="text" class="form-control" id="validationDefault01" placeholder="First name" value="Mark" required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault02">Name</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto" required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationDefault02">ID Client</label>
      <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto" required>
    </div>
    </div>

  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationDefault03">City</label>
      <input type="text" class="form-control" id="validationDefault03" placeholder="City" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault04">State</label>
      <input type="text" class="form-control" id="validationDefault04" placeholder="State" required>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationDefault05">Zip</label>
      <input type="text" class="form-control" id="validationDefault05" placeholder="Zip" required>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
      <label class="form-check-label" for="invalidCheck2">
        Agree to terms and conditions
      </label>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Submit form</button>
</form>

                            </div>
                        </div>
                    </div>