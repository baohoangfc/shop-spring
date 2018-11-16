<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %> 

<div class="row inner-bottom-sm">

			<div class="shopping-cart">
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
				<div class="col-md-12 col-sm-12 shopping-cart-table ">

	<div class="table-responsive">
	
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="cart-description item">Image</th>
					<th class="cart-product-name item">Product Name</th>
					<th class="cart-qty item">Quantity</th>
					<th class="cart-sub-total item">Subtotal</th>
					<th class="cart-total last-item">Grandtotal</th>
				</tr>
			</thead><!-- /thead -->
			<tbody>
				<c:forEach items="${sessionScope.cart }" var="item" varStatus="i">
				<c:set var="s" value="${s + item.price * item.quantity }" ></c:set>
				<tr>
					<td class="cart-image">
						<a class="entry-thumbnail" href="${pageContext.request.contextPath }/">
						    <img src="" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="detail.html">${item.name_product }</a></h4>
					</td>
					<td class="cart-product-quantity">
						<div class="cart-quantity">
							<div class="quant-input">
				                <input disabled="disabled" name="quantity" type="text" value="${item.quantity }">
			              </div>
			            </div>
		            </td>
					<td class="cart-product-sub-total"><span class="cart-sub-total-price">$${item.price }</span></td>
					<td class="cart-product-grand-total"><span class="cart-grand-total-price">$${item.price * item.quantity }</span></td>
					<!-- --------------------------------------------------------------------- -->
				</tr>
				</c:forEach>
			</tbody><!-- /tbody -->
		</table><!-- /table -->
		
		
		
		
	</div>
</div><!-- /.shopping-cart-table --><div class="col-md-4 col-sm-12 estimate-ship-tax">
</div><!-- /.estimate-ship-tax -->

<div class="col-md-4 col-sm-12 estimate-ship-tax">
</div><!-- /.estimate-ship-tax -->

<div class="col-md-4 col-sm-12 cart-shopping-total">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>
					<div class="cart-grand-total">
						Total<span class="inner-left-md">$${s }</span>
					</div>
				</th>
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>
						<div class="cart-checkout-btn pull-right">
							<!-- Identify your business so that you can collect the payments. -->
							  <input type="hidden" name="business" value="baohoangfc-facilitator@gmail.com">
							
							  <!-- Specify a Buy Now button. -->
							  <input type="hidden" name="cmd" value="_xclick">
							
							  <!-- Specify details about the item that buyers will purchase. -->
							  <input type="hidden" name="item_name" value="Checkout">
							  <input type="hidden" name="amount" value="${s }">
							  <input type="hidden" name="currency_code" value="USD">
							
							  <!-- Display the payment button. -->
							  <input type="image" name="submit" border="0"
							  src="https://www.paypalobjects.com/webstatic/en_US/i/btn/png/btn_buynow_107x26.png"
							  alt="Buy Now With PayPal">
							  <img alt="" border="0" width="1" height="1"
							  src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" >
						</div>
					</td>
				</tr>
		</tbody>
	</table>
</div>		
		</form>
</div>
		</div>

		