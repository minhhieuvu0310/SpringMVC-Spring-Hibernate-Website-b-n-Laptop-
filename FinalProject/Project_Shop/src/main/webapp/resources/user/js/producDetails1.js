/**
 * 
 */
 try {
	    function isNumberKey(e) {
	        var charCode = (e.which) ? e.which : e.keyCode;
	        if (charCode > 31 && (charCode < 48 || charCode > 57))
	            return false;
	        return true;
	    }

	    var attColor = document.getElementById('product-detail__attribute--color');
	    var options = attColor.getElementsByClassName('product-detail__attribute-btn');
	    for (const option of options) {
	        option.addEventListener('click', function () {
	            var kt = attColor.querySelector('p.product-detail__attribute-btn.btn.product-detail__attribute-btn--active');
	            console.log(kt);
	            if (kt == null) {
	                this.classList.add('product-detail__attribute-btn--active');
	                this.parentNode.firstElementChild.name = 'option--selected'
	            } else {
	                if (!this.classList.contains("product-detail__attribute-btn--active")) {
	                    attColor.querySelector('p.product-detail__attribute-btn.btn.product-detail__attribute-btn--active').parentNode.firstElementChild.name='';
	                    attColor.querySelector('p.product-detail__attribute-btn.btn.product-detail__attribute-btn--active').classList.remove('product-detail__attribute-btn--active');
	                    this.classList.add('product-detail__attribute-btn--active');
	                    this.parentNode.firstElementChild.name = 'option--selected';
	                }else{
	                    this.classList.remove('product-detail__attribute-btn--active');
	                    this.parentNode.firstElementChild.name = '';
	                }
	            }
	        })
	    }

	    var btnCartadd = document.getElementById('btnCart--add');
	    var quantity = document.getElementById('quantity');
	    
	    var Maxquantity = document.getElementById('quantity--max').innerHTML;
	    btnCartadd.addEventListener('click',function(){
	        var quantity = document.getElementById('quantity');
	        if(quantity.value != '' && quantity.value < parseInt(Maxquantity)){
	            quantity.value = parseInt(quantity.value) + 1;
	        }
	    });
	    
	    var btnCartsub = document.getElementById('btnCart--sub');
	    btnCartsub.addEventListener('click',function(){
	        var quantity = document.getElementById('quantity');
	        if(quantity.value != '' && parseInt(quantity.value) > 1){
	            quantity.value = parseInt(quantity.value) - 1;
	        }
	    });
	    
	    var btnAddCart = document.getElementById('btn--AddCart');
	    var errorNoClickoptionColor = document.getElementById('errorNoClickoptionColor');
	    btnAddCart.addEventListener('click',function(){
	        var checkTesst = true;
	        var checkTesst2 = true;
	        if(attColor.querySelector('p.product-detail__attribute-btn.btn.product-detail__attribute-btn--active') == null){
	            errorNoClickoptionColor.innerHTML = 'bạn chưa chọn màu sắc cho sản phẩm'
	            checkTesst = false;
	        }else{
	            checkTesst = true;
	            errorNoClickoptionColor.innerHTML = '';
	        }
	        if(quantity.value > parseInt(Maxquantity)){
	            checkTesst2 = false;
	            errorQuantityInput.innerHTML = 'Hiện Tại Shop Không Có Đủ Hàng Nên Bạn Vui Lòng Chọn Lại Số Lượng Sản Phẩm';
	        }else if(quantity.value == 0 || quantity.value == ""){
				checkTesst2 = false;
	            errorQuantityInput.innerHTML = 'Số lượng mua không hợp lệ vui lòng điền lại';
			}else{
	            checkTesst2 = true;
	            errorQuantityInput.innerHTML = '';
	        }
	        

	        if(checkTesst && checkTesst2){
				document.getElementById("frmProductdetails").action = "addcart";
	            document.getElementById('frmProductdetails').submit();
	        }
	    })
	    
	    var btnBuyNow = document.getElementById('btnBuyNow');
	    btnBuyNow.addEventListener('click',function(){
	        var checkTesst = true;
	        var checkTesst2 = true;
	        if(attColor.querySelector('p.product-detail__attribute-btn.btn.product-detail__attribute-btn--active') == null){
	            errorNoClickoptionColor.innerHTML = 'bạn chưa chọn màu sắc cho sản phẩm'
	            checkTesst = false;
	        }else{
	            checkTesst = true;
	            errorNoClickoptionColor.innerHTML = '';
	        }
	        if(quantity.value > parseInt(Maxquantity)){
	            checkTesst2 = false;
	            errorQuantityInput.innerHTML = 'Hiện Tại Shop Không Có Đủ Hàng Nên Bạn Vui Lòng Chọn Lại Số Lượng Sản Phẩm';
	        }else if(quantity.value == 0 || quantity.value == ""){
				checkTesst2 = false;
	            errorQuantityInput.innerHTML = 'Số lượng mua không hợp lệ vui lòng điền lại';
			}else{
	            checkTesst2 = true;
	            errorQuantityInput.innerHTML = '';
	        }

	        if(checkTesst && checkTesst2){
	            document.getElementById("frmProductdetails").action = "buyNow";
	            document.getElementById('frmProductdetails').submit();
	        }
	    })
	} catch (error) {
	    console.log(error);
	}