<?php //var_dump($blogdata); ?>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<?=base_url("assets/img/post-bg.jpg")?>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="post-heading text-center">
						<?php if (count($blogdata) > 0): ?>
							<?php foreach ($blogdata as $blogdatarow): ?>
								<h1><?=$blogdatarow->title?></h1>
								<h2 class="subheading"><?=$blogdatarow->slug?></h2>
								<span class="meta">Posted by <a href="#"><?=$blogdatarow->first_name . " " . $blogdatarow->last_name?></a> on <?=$blogdatarow->updated_at?></span>
							<?php endforeach; ?>
						<?php else: ?>
						<h1>Sorry, that post doesn't exist.</h1>
                        <hr class="small">
                        <span class="subheading">Why don't you create one?</span>
						<?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <?php if (count($blogdata) > 0): ?>
						<?php foreach ($blogdata as $blogdatarow): ?>
							<div><?=$blogdatarow->content?></div>
							<?php if (count($blogcommentsdata) > 0): ?>
							<div class="text-right">
								<?php foreach ($blogcommentsdata as $blogcommentsdatarow): ?>
									"<?=$blogcommentsdatarow->content?>" - <?=$blogcommentsdatarow->first_name." ".$blogcommentsdatarow->last_name?> on <?=$blogcommentsdatarow->created_at?><br />
								<?php endforeach; ?>
							</div>
							<?php endif; ?>
							
							<?php if ($this->session->userdata("data")):?>
								<div><a data-toggle="modal" data-target="#modalAddComment" class="addcomment">&rarr; Add Comment</a></div>
								<div class="text-center">
								<a href="<?=base_url("blog/editpost")."/".$blogdatarow->id?>"><button class="btn btn-default">Edit</button></a> 
								<a href="<?=base_url("blog/deletepost")."/".$blogdatarow->id?>"><button class="btn btn-default">Delete</button></a> 
								</div>
							<?php endif; ?>
						<?php endforeach; ?>
					<?php else: ?>
						<p>Sorry, that post doesn't exist.</p>
					<?php endif; ?>
					
					<!-- Modal -->
					<div class="modal fade" id="modalAddComment" tabindex="-1" role="dialog" aria-labelledby="myAddCommentModalLabel">
					  <div class="modal-dialog" role="document">
						<div class="modal-content">
						  <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Comment</h4>
						  </div>
						  <div class="modal-body">
							<form id="frmAddComment" method="post" action="<?=base_url("blog/addcomment")."/".$blogdataID?>">
								<textarea class="form-control" rows="5" style="resize:none" name="txtComment" id="txtComment" placeholder="Comment"></textarea>
							</form>
						  </div>
						  <div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="btnAddCommentSubmit">Submit</button>
						  </div>
						</div>
					  </div>
					</div>
                </div>
            </div>
        </div>
    </article>

