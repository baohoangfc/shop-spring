<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="body-content outer-top-bd">
	<div class="container">
		<div class="row inner-bottom-sm">
			<div class="contact-page">
				<div class="col-md-9 contact-form">
	<div class="col-md-12 contact-title">
		<h4>Contact Form</h4>
		<h2 style="color:red">msg</h2>
	</div>
	<form action="${pageContext.request.contextPath }/contact" method="post">
	<div class="col-md-4 ">
			<div class="form-group">
		    <label class="info-title" for="exampleInputName">Your Name <span>*</span></label>
		    <input name="name" type="text" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="Name">
		  </div>
	</div>
	<div class="col-md-4">
			<div class="form-group">
		    <label class="info-title" for="exampleInputEmail1">Email Address <span>*</span></label>
		    <input name="email" type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="admin@unicase.com">
		  </div>
	</div>
	<div class="col-md-4">
			<div class="form-group">
		    <label class="info-title" for="exampleInputTitle">Title <span>*</span></label>
		    <input name="title" type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="Title">
		  </div>
	</div>
	<div class="col-md-12">
			<div class="form-group">
		    <label class="info-title" for="exampleInputComments">Your Comments <span>*</span></label>
		    <textarea name="content" class="form-control unicase-form-control" id="exampleInputComments"></textarea>
		  </div>
	</div>
	
	<div class="col-md-12 outer-bottom-small m-t-20">
		<button type="submit" class="btn-upper btn btn-primary checkout-page-button">Send Message</button>
	</div>
	</form>
</div>
			</div><!-- /.contact-page -->
		</div><!-- /.row -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->
<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->