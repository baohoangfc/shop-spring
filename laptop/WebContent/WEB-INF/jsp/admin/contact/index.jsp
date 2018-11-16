<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>     
<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Striped Table with Hover</h4>
                                <p class="category">${msg }</p>
                            </div>
						   <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    	<th>ID</th>
                                    	<th>Tên</th>
                                    	<th>Email</th>
                                    	<th>Chủ Đề</th>
										<th>Nội Dung</th>
										<th>Chức năng</th>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${listContact }" var="obj">
                                        <tr>
                                        	<td>${obj.id }</td>
                                        	<td>${obj.name }</td>
                                        	<td>${obj.email }</td>
                                        	<td>${obj.title }</td>
                                        	<td>${obj.content }</td>
                                        	<td>
		                                       <a href="${pageContext.request.contextPath }/admin/contact/del/${obj.id}" onclick="return confirm('Bạn có muốn xóa danh mục này không')" title="" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Xóa</a>
                                        	</td>
                                        </tr>
                                    </c:forEach>    
                                    </tbody>
                                </table>
                                
                                <!-- Pagination -->
                            <nav class="text-center" aria-label="...">
                                 <ul class="pagination">
                                 	<c:if test="${page != 1 }">
                                    <li class="disabled"><a href="${pageContext.request.contextPath }/admin/contact/${page-1}" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                                    </c:if>
                                    <c:forEach var="i" begin="1" end="${sumPage }">
                                    	<li <c:if test="${page == i}">class="active"</c:if> ><a href="${pageContext.request.contextPath }/admin/contact/${i}">${i } <span class="sr-only">(current)</span></a></li>
                                    </c:forEach>
                                    <c:if test="${page != sumPage }">
                                    <li><a href="${pageContext.request.contextPath }/admin/contact/${page+1}" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                                	</c:if>
                                </ul> 
                            </nav>
                            <!-- /.pagination -->

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>