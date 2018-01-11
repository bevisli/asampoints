	function showalert(keyw, stitle, divname) {
		if (!divname || divname == undefined) {
			divname = "#AllObjMsg";
		}
		$(divname).html(stitle);
		$(divname).fadeIn();
		if (keyw == 1) {
			setTimeout("$('" + divname + "').fadeOut();", 1000);
		}
	}

	function hiddendiv(divname) {
		if (!divname) {
			divname = "#AllObjMsg";
		}
		$(divname).fadeOut();
	}

	function loginsend(){
		$.post("/ajax/",
		{
		act:'login'
		},
		function(data){
		  if(data){
			BootstrapDialog.show({title:'<h4 class="modal-title"><span class="glyphicon glyphicon-user"></span>会员登录</h4>',message:data});
		  }else{
			BootstrapDialog.show({title:'系统提示',message:'登录失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		  }
		});
	}

	function forget(){
		$('.modal-backdrop').remove();
		$('.bootstrap-dialog').remove();
		$('.modal-dialog').remove();
		$.post("/ajax/",
		{
		act:'forget'
		},
		function(data){
		  if(data){
			BootstrapDialog.show({title:'<h4 class="modal-title"><span class="glyphicon glyphicon-search"></span>找回密码</h4>',message:data});
		  }else{
			BootstrapDialog.show({title:'系统提示',message:'找回失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
		  }
		});
	}

	function registration(){
		  $.post("/ajax/",
		  {
			act:'registration'
		  },
		  function(data){
			  if(data){
				BootstrapDialog.show({title:'<h4 class="modal-title"><span class="glyphicon glyphicon-user"></span>注册帐号</h4>',message:data});
			  }else{
				BootstrapDialog.show({title:'系统提示',message:'登录失败！<hr><div class="bootstrap-dialog-footer-buttons"><button class="btn btn-default" data-dismiss="modal">确定</button></div>'});
			  }
		  });
	}

	function ignoreSpaces(string) {
	   var temp = "";
	   string = '' + string;
	   splitstring = string.split(" ");
	   for(i = 0; i < splitstring.length; i++)
	   temp += splitstring[i];
	   if(splitstring.length>0){
	   var myDivname=document.getElementById("textu_name");
		  document.getElementById("u_name").value=temp;
	   }
	}
	function checkphone(){
		var myphone_mobilecode=document.getElementById("u_mobilecode").value;
		var myphone=document.getElementById("u_phone").value;
	  var myDivphone=document.getElementById("textu_phone");
		if(myphone=="")
	    {
				myDivphone.innerHTML="<font color='red'>手机号不为空!</font>";
        return false;
	    }
		if(myphone_mobilecode=="86"){
				if (!myphone.match(/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/)) { 
				myDivphone.innerHTML="<font color='red'>格式不正确!</font>";
	      return false;
			}
		}
		else{
			myDivphone.innerHTML="<font color='green'><img src='/assets/images/right.png'> </font>";
		  return true;
		 } 
	}
	function checkaddress(){
		var myaddress=document.getElementById("u_address").value;
	  var myDivaddress=document.getElementById("textu_address");
		if(myaddress=="")
	    {
				myDivaddress.innerHTML="<font color='red'>地址不为空!</font>";
				return false;
	    }
		else
		 {
			myDivaddress.innerHTML="<font color='green'><img src='/assets/images/right.png'> </font>";
		  return true;
		 } 
	}
	function checkname(){
    var myname=document.getElementById("u_name").value;
    var myDivname=document.getElementById("textu_name");
    if(myname=="")
    {
        myDivname.innerHTML="<font color='red'>姓名不为空!</font>";
        return false;
    }
		else
		{
			myDivname.innerHTML="<font color='green'><img src='/assets/images/right.png'> </font>";
		  return true;
		 } 
	}
	function checkuserpassword()  //检查密码 
	{
	 var mypassword=document.getElementById("u_pass1").value;
	 var myDivpassword=document.getElementById("textu_pass1");
	 if(mypassword=="")
	 {
	  myDivpassword.innerHTML="<font color='red'>密码不能为空!</font>";
	  return false;
	 }
	 else if(mypassword.length<6)
	 {
	  myDivpassword.innerHTML="<font color='red'>密码至少应为六位!</font>";
	  return false;
	 }
	 else
	 {
	  myDivpassword.innerHTML="<font color='green'><img src='/assets/images/right.png'> </font>";
	  return true;
	 } 
	}
	function check(v){
		var myphone_mobilecode=document.getElementById("u_mobilecode").value;
		if(myphone_mobilecode=="86"){
			$('.ckcode').show();
		}else{
			$('.ckcode').hide();   
		}
	}
	function checkall(){
		{
	    if(checkphone()&&checkaddress()&&checkname()&&checkuserpassword())
	    {
				regtable.submit();
	    }
	    return false;   
		}
	}