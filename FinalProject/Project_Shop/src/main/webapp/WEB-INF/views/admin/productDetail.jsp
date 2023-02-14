
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />

<jsp:include page="link_asset.jsp"></jsp:include>
<link href="<c:url value="resources/admin/css/sweetalert.css" />" rel="stylesheet" type="text/css"/>
<script src="<c:url value="resources/admin/js/sweetalert.min.js" />" type="text/javascript"></script>
<script src="<c:url value="resources/ckeditor/ckeditor.js" />" type="text/javascript"></script>
<script src="<c:url value="resources/ckfinder/ckfinder.js" />" type="text/javascript"></script>

<body class="no-skin">
  <jsp:include page="header.jsp"></jsp:include>

  <div class="main-container" id="main-container">
    <script type="text/javascript">
      try {
        ace.settings.check('main-container', 'fixed')
      } catch (e) {
      }
    </script>

    <jsp:include page="menu.jsp"></jsp:include>


    <div class="main-content">
      <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
          <script type="text/javascript">
            try {
              ace.settings.check('breadcrumbs', 'fixed')
            } catch (e) {
            }
          </script>

          <ul class="breadcrumb">
            <li>
              <i class="ace-icon fa fa-home home-icon"></i>
              <a href="#">Home</a>
            </li>
            <li class="active">Dashboard</li>
          </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">

          <div class="row">
            <div class="col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h4>Quản lí sản phẩm <small>  >> Chi Tiết Sản Phẩm</small></h4>
                  <div class="clearfix"></div>
                  <f:form class="form-horizontal form-label-left"  modelAttribute="productDetail" enctype="multipart/form-data" method="get">
					<div class="form-group message">
                        ${message}
                    </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Tên sản phẩm <span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:input type="text" id="productName" class="form-control col-md-7 col-xs-12" path="productName" readonly="true"/>
                    </div>                    
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Mô tả <span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                    	<f:textarea type="text" id="productContent" rows="50" class="form-control col-md-7 col-xs-12" path="productContent" readonly="true"/>  
                    </div>         
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Mô tả chi tiết <span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:textarea id="productContentDetail"  class="form-control col-md-7 col-xs-12" path="productContentDetail" readonly="true"/>
                    </div>                    
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Ảnh chính<span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                       <f:input id="imagesPrimary" type="text" class="form-control col-md-7 col-xs-12" path="images" readonly="true"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Số lượng <span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:input type="text" id="quantity" class="form-control col-md-7 col-xs-12" path="quantity" readonly="true"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Giá nhập <span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:input type="text" id="priceInput" class="form-control col-md-7 col-xs-12 CurrencyInput" path="priceInput" readonly="true"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Giá bán<span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:input type="text" id="priceOutput" class="form-control col-md-7 col-xs-12 CurrencyInput" path="priceOutput" readonly="true"/>
                    </div>                 
                  </div>
                  <div class="form-group">
                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Nhà cung cấp<span class="required">*</span>
                    </label>
                    <div class="col-md-10 col-sm-10 col-xs-12">
                      <f:input type="text" id="provider" class="form-control col-md-7 col-xs-12" path="provider.providerName" readonly="true"/>
                	</div>
              	</div>
                <div class="form-group">
	                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">Mã danh mục <span class="required">*</span>
	                </label>
	                <div class="col-md-10 col-sm-10 col-xs-12">
	                  	<f:input type="text" id="catalog" class="form-control col-md-7 col-xs-12" path="catalog.catalogName" readonly="true"/>
	            	</div>
          	   </div>
              <div class="form-group">
		            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Giám giá <span class="required">*</span>
		            </label>
		            <div class="col-md-10 col-sm-10 col-xs-12">
		              <f:input type="text" id="discount" class="form-control col-md-7 col-xs-12" path="discount" readonly="true"/>
		            </div>
              </div>
              <div class="form-group">
		            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Trạng Thái <span class="required">*</span>
		            </label>
		            <div class="col-md-10 col-sm-10 col-xs-12">
		              <f:input type="text" id="status" class="form-control col-md-7 col-xs-12" path="status" readonly="true"/>
		            </div>
              </div>
              <div class="ln_solid"></div>
		          <div class="form-group">
		            <div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-3">
		              <button class="btn btn-primary" type="button" onclick="history.go(-1)">Quay lại</button>
		           </div>
              </div>
        </f:form>
      </div>
    </div>
  </div>

</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
var editor = CKEDITOR.replace( 'productContentDetail' );
var editor1 = CKEDITOR.replace('productContent');
CKFinder.setupCKEditor(editor,'<c:url value="resources" />/ckfinder/');
CKFinder.setupCKEditor(editor1,'<c:url value="resources" />/ckfinder/');
document.getElementById('priceOutput').value = Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(document.getElementById('priceOutput').value);
document.getElementById('priceInput').value = Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(document.getElementById('priceInput').value);

</script>    

<jsp:include page="footer.jsp"></jsp:include>

</div><!-- /.main-container -->

</body>
</html>

