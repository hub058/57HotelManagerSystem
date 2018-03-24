var status = 1;
var Menus = new DvMenuCls;

document.onclick=Menus.Clear;
function switchSysBar(){
	var switchPoint=document.getElementById("switchPoint");
	var frmTitle=document.getElementById("frmTitle");
     if (1 == window.status){
		  window.status = 0;
		  //alert(switchPoint);

          switchPoint.style.backgroundImage = 'url(images/common/left.gif)';
          frmTitle.style.display="none"
     }
     else{
		  window.status = 1;
          switchPoint.style.backgroundImage = 'url(images/common/right.gif)'; 
          frmTitle.style.display=""
     }
}

function DvMenuCls(){
	var MenuHides = new Array();
	this.Show = function(obj,depth){
		var childNode = this.GetChildNode(obj);
		if (!childNode){return ;}
		if (typeof(MenuHides[depth])=="object"){
			this.closediv(MenuHides[depth]);
			MenuHides[depth] = '';
		};
		if (depth>0){
			if (childNode.parentNode.offsetWidth>0){
				childNode.style.left= childNode.parentNode.offsetWidth+'px';
				
			}else{
				childNode.style.left='100px';
			};
			
			childNode.style.top = '-2px';
		};

		childNode.style.display ='none';
		MenuHides[depth]=childNode;
	
	};
	this.closediv = function(obj){
		if (typeof(obj)=="object"){
			if (obj.style.display!='none'){
			obj.style.display='none';
			}
		}
	}
	this.Hide = function(depth){
		var i=0;
		if (depth>0){
			i = depth
		};
		while(MenuHides[i]!=null && MenuHides[i]!=''){
			this.closediv(MenuHides[i]);
			MenuHides[i]='';
			i++;
		};
	
	};
	this.Clear = function(){
		for(var i=0;i<MenuHides.length;i++){
			if (MenuHides[i]!=null && MenuHides[i]!=''){
				MenuHides[i].style.display='none';
				MenuHides[i]='';
			}
		}
	}
	this.GetChildNode = function(submenu){
		for(var i=0;i<submenu.childNodes.length;i++)
		{
			if(submenu.childNodes[i].nodeName.toLowerCase()=="div")
			{
				var obj=submenu.childNodes[i];
				break;
			}
		}
		return obj;
	}

}
$(function(){
	
$(".viewLivein").on("click",function(){
		var obj = $(this);
		$.ajax({
			type:"GET",
			url:"view.html",
			data:{uid:obj.attr("liveinid")},
			dataType:"json",
			success:function(date){
				//到页面上显示用户result信息
				if ("failed"==date) {
					alert("操作超时!");
				}else if ("nodata"==date) {
					alert("没有数据");
				}else {
					$("#v_inno").val(date.inno);
					$("#v_delmark").val(date.delmark);
					$("#v_roomID").val(date.roomID);
					$("#v_cID").val(date.cID);
					$("#v_cname").val(date.cname);
					$("#v_csex").val(date.csex);
					$("#v_zjno").val(date.zjno);
					$("#v_renshu").val(date.renshu);
					$("#v_intime").val(date.intime);
					$("#v_leavetime").val(date.leavetime);
					$("#v_ctel").val(date.ctel);
					$("#v_foregift").val(date.foregift+" 元");
					$("#v_days").val(date.days+" 天");
					$("#v_account").val(date.account+" 元");
				}
				
			},
			error:function(data){
				alert("error!");
			}
		}); 
	 });

	
	
$(".modifyCustomer").on("click",function(){
	var obj = $(this);
		var customercID = obj.attr("customercID");
		window.location.href="updatecustomer.html?rcID="+ customercID;		
});




$(".deleteCustomer").on("click",function(){
	var obj = $(this);
	if(confirm("你确定要删除会员【"+obj.attr("customercname")+"】及其所有的信息吗？")){
		$.ajax({
			type:"GET",
			url:"deleteCustomer.html",
			data:{cID:obj.attr("customercID")},
			dataType:"json",
			success:function(data){
				if(data.delResult == "true"){//删除成功：移除删除行
					alert("删除成功");
					obj.parents("tr").remove();
				}else if(data.delResult == "false"){//删除失败
					alert("对不起，删除会员【"+obj.attr("customercname")+"】失败");
				}else if(data.delResult == "notexist"){
					alert("对不起，订单【"+obj.attr("customercname")+"】不存在");
				}
			},
			error:function(data){
				alert("对不起，删除失败");
			}
		});
	}
});
});

function getleftbar(obj){
	var leftobj;
	var titleobj=obj.getElementsByTagName("a");
	leftobj = document.all ? frames["frmleft"] : document.getElementById("frmleft").contentWindow;
	if (!leftobj){return;}
	var menubar = leftobj.document.getElementById("menubar")
	if (menubar){
			if (titleobj[0]){
				document.getElementById("leftmenu_title").innerHTML = titleobj[0].innerHTML;
			}
			var a=obj.getElementsByTagName("ul");
			for(var i=0;i<a.length;i++){
				menubar.innerHTML = a[i].innerHTML;
				//alert(a[i].innerHTML);
			}
	}
}

