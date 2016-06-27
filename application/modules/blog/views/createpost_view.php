<?php //var_dump($blogdata); ?>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<?=base_url("assets/img/post-bg.jpg")?>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="post-heading text-center">
						<h1>Go on and move forward.</h1>
                        <hr class="small">
                        <span class="subheading">A simple gesture is all it takes.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 loginbox">
                    <form id="frmCreatePost" method="post" action="<?=base_url("blog/createpost")?>">
						<div class="form-group">
							<label for="txtTitle">Title</label>
							<input type="text" class="form-control" name="txtTitle" id="txtTitle" placeholder="Title">
						</div>
						<div class="form-group">
							<label for="txtSlug">Slug</label>
							<input type="text" class="form-control" name="txtSlug" id="txtSlug" placeholder="Slug">
						</div>
						<div class="form-group">
							<label for="txtContent">Content</label>
							<textarea class="form-control" rows="5" style="resize:none" name="txtContent" id="txtContent" placeholder="Content"></textarea>
						</div>
						<button type="submit" id="btnCreatePostSubmit" class="btn btn-default">Submit</button>
					</form>
                </div>
            </div>
        </div>
    </article>

