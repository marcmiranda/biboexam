

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<?=base_url("assets/img/home-bg.jpg")?>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>Login/Signup</h1>
                        <hr class="small">
                        <span class="subheading">This is the start of everything.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 loginbox">
                <div class="text-center">
					<button id="btnLogin" class="btn btn-default btnactive">Login</button>
					<button id="btnRegister" class="btn btn-default">Register</button>
				</div>
				<div id="errormessage"><?=(isset($error))?$error:""?></div>
				<form id="frmLogin" method="post" action="<?=base_url("blog/login")?>">
					<div class="form-group">
						<label for="txtUsername">Username</label>
						<input type="text" class="form-control" name="txtUsername" id="txtUsername" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="txtPassword">Password</label>
						<input type="password" class="form-control" name="txtPassword" id="txtPassword" placeholder="Password">
					</div>
					<button type="submit" id="btnLoginSubmit" class="btn btn-default">Submit</button>
				</form>
				<form id="frmRegister" method="post" action="<?=base_url("blog/register")?>" style="display:none;">
					<div class="form-group">
						<label for="txtEmail">Email</label>
						<input type="email" class="form-control" name="txtEmail" id="txtEmail" placeholder="Email">
					</div>
					<div class="form-group">
						<label for="txtFirstName">First Name</label>
						<input type="text" class="form-control" name="txtFirstName" id="txtFirstName" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="txtLastName">Last Name</label>
						<input type="text" class="form-control" name="txtLastName" id="txtLastName" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="txtUsernameR">Username</label>
						<input type="text" class="form-control" name="txtUsernameR" id="txtUsernameR" placeholder="Username">
					</div>
					<div class="form-group">
						<label for="txtPasswordR">Password</label>
						<input type="password" class="form-control" name="txtPasswordR" id="txtPasswordR" placeholder="Password">
					</div>
					<button type="submit" id="btnRegisterSubmit" class="btn btn-default">Submit</button>
				</form>
            </div>
        </div>
    </div>

