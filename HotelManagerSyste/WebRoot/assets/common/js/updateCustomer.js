var cID = null;
var cname = null;
var csex = null;
var zjno = null;
var ctel = null;
var ctypeid=null;
var addBtn = null;
var backBtn = null;


$(function(){
	cID=$("#cID");
	cname=$("#cname");
	csex = $("#csex");
	zjno = $("#zjno");
	ctel = $("#ctel");
	ctypeid = $("#ctypeid");
	addBtn = $("#add");
	backBtn = $("#back");
	//初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
	cID.next().html("*");
	cname.next().html("*");
	csex.next().html("*");
	zjno.next().html("*");
	ctel.next().html("*");
	ctypeid.next().html("*");
	/*
	 * 验证
	 * 失焦\获焦
	 * jquery的方法传递
	 */
	cname.bind("focus",function(){
		validateTip(cname.next(),{"color":"#666666"},"* 用户名长度必须是大于1小于10的字符",false);
	}).bind("blur",function(){
		if(cname.val() != null && cname.val().length > 1
				&& cname.val().length < 10){
			validateTip(cname.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(cname.next(),{"color":"red"},imgNo+" 用户名输入的不符合规范，请重新输入",false);
		}
		
	});
	
	
	ctel.bind("focus",function(){
		validateTip(ctel.next(),{"color":"#666666"},"* 请输入手机号",false);
	}).bind("blur",function(){
		var patrn=/^(13[0-9]|15[0-9]|18[0-9])\d{8}$/;
		if(ctel.val().match(patrn)){
			validateTip(ctel.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(ctel.next(),{"color":"red"},imgNo + " 您输入的手机号格式不正确",false);
		}
	});
	
	zjno.bind("focus",function(){
		validateTip(zjno.next(),{"color":"#666666"},"* 身份证长度必须是15位或者18位",false);
	}).bind("blur",function(){
		if(zjno.val() != null && zjno.val().length == 15
				|| zjno.val().length == 18 ){
			validateTip(zjno.next(),{"color":"green"},imgYes,true);
		}else{
			validateTip(zjno.next(),{"color":"red"},imgNo + " 身份证输入不符合规范，请重新输入",false);
		}
	});
	
});


