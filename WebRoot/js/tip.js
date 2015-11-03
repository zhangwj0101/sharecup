;(function($){ 
$.fn.bgIframe = $.fn.bgiframe = function(s) { 
// This is only for IE6 
if ( $.browser.msie && /6.0/.test(navigator.userAgent) ) { 
s = $.extend({ 
top : 'auto', // auto == .currentStyle.borderTopWidth 
left : 'auto', // auto == .currentStyle.borderLeftWidth 
width : 'auto', // auto == offsetWidth 
height : 'auto', // auto == offsetHeight 
opacity : true, 
src : 'javascript:false;' 
}, s || {}); 
var prop = function(n){return n&&n.constructor==Number?n+'px':n;}, 
html = '<iframe class="bgiframe"frameborder="0"tabindex="-1"src="'+s.src+'"'+ 
'style="display:block;position:absolute;z-index:-1;'+ 
(s.opacity !== false?'filter:Alpha(Opacity=\'0\');':'')+ 
'top:'+(s.top=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderTopWidth)||0)*-1)+\'px\')':prop(s.top))+';'+ 
'left:'+(s.left=='auto'?'expression(((parseInt(this.parentNode.currentStyle.borderLeftWidth)||0)*-1)+\'px\')':prop(s.left))+';'+ 
'width:'+(s.width=='auto'?'expression(this.parentNode.offsetWidth+\'px\')':prop(s.width))+';'+ 
'height:'+(s.height=='auto'?'expression(this.parentNode.offsetHeight+\'px\')':prop(s.height))+';'+ 
'"/>'; 
return this.each(function() { 
if ( $('> iframe.bgiframe', this).length == 0 ) 
this.insertBefore( document.createElement(html), this.firstChild ); 
}); 
} 
return this; 
}; 
})(jQuery); 
//选择标签至文本域插件 
(function(){ 
	$.fn.extend({ 
		iSelectTags:function(options){ 
			var iset={ 
				name:'.tagsbox',//表单或class或id名 
				drop:$('#dropbox'),//弹出框定位 
				pseudoClass:$('#dropbox>p>a'),//可选择的标签定位 
				close:$('em.close'),//关闭按钮定位 
				separator:',',//标签间分隔符,建议使用英文逗号 
				maxCount:10 //默认限制个数,也可以设置表单的data-count值覆盖默认值 
			} 
			options = options || {}; 
			$.extend(iset, options); 
			var _input=$(iset.name); 
			var _inputVal=_input.val(); 
			var _arr=new Array(); //存放标签的数组 
			var _flag = false;//是否已定位
			//弹出框的宽度,此处计算的是与表单实际宽度相等的.也可以直接在样式中定义. 
			var _txt=null; 
			var _maxCount=parseInt(_input.attr('data-count'));//限制选择个数 
			if(isNaN(_maxCount)){ 
				_maxCount=iset.maxCount 
			} 
			_input.click(function(){ 
				var _left=$(this).offset().left; //左绝对距离 
				var _top=$(this).offset().top+$(this).outerHeight(); //上绝对距离,此处要加上表单的高度 
				var _dropW=$(this).outerWidth()-parseInt($(this).css('border-left-width'))-parseInt($(this).css('border-right-width'))-parseInt(iset.drop.css('paddingLeft'))-parseInt(iset.drop.css('paddingRight')); 
				iset.drop.css({'position':'absolute','left':_left+'px','top':_top+'px','width':_dropW+'px'}); 
				_flag = true;
				iset.drop.show(); 
				iset.drop.bgiframe();//调用bgiframe插件,解决ie6下select的z-index无限大问题 
			}).bind('keyup change',function(){ 
				//可以在此处扩展手动输入标签情况下的相关判断 
				//if语句可避免清空重新选择时第一个字符为逗号 
				if ($(this).val() == '') { 
					_arr = new Array(); 
				}else { 
					_arr = $(this).val().split(iset.separator);//当用户手动删除或修改标签值后更新标签值 
				} 
			}); 
			$(document).click(function(e){ 
				//点击非弹出框区域时关闭弹出框 
				//下面的 if语句是用来判断传入的是class还是id 
				if(iset.name.charAt(0)=='#'){ 
					if(e.target.id!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				}else if(iset.name.charAt(0)=='.'){ 
					if(e.target.className!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				} 
			}); 
			iset.drop.click(function(e){ 
				//阻止弹出框区域默认事件 
				e.stopPropagation(); 
			}); 
			iset.pseudoClass.click(function(){ 
				//标签选择 
				_txt=$(this).text(); 
				//下面的$.inArray是用来判断是否重复 
				//若想反馈重复提示或走出限制个数提示,可改进下面的if语句 
				if(($.inArray(_txt,_arr)==-1) && (_arr.length<_maxCount )){ 
					//_arr.push(_txt); 
					//_inputVal=_arr.join(iset.separator); 
					_inputVal=$(this).text(); 
					// if(_inputVal.charAt(0)==','){ 
					// _inputVal.replace(/,/,'') 
					// } 
					_input.val(_inputVal); 
				} 
			}); 
			//关闭按钮 
			iset.close.click(function(){ 
				iset.drop.hide(); 
			}); 
		} 
	}); 
	
})(jQuery);


(function(){ 
	$.fn.extend({ 
		iSelectTags1:function(options){ 
			var iset={ 
				name:'.tagsbox1',//表单或class或id名 
				drop:$('#dropbox1'),//弹出框定位 
				pseudoClass:$('#dropbox1>p>a'),//可选择的标签定位 
				close:$('em.close'),//关闭按钮定位 
				separator:',',//标签间分隔符,建议使用英文逗号 
				maxCount:10 //默认限制个数,也可以设置表单的data-count值覆盖默认值 
			} 
			options = options || {}; 
			$.extend(iset, options); 
			var _input=$(iset.name); 
			var _inputVal=_input.val(); 
			var _arr=new Array(); //存放标签的数组 
			var _flag = false;//是否已定位
			//弹出框的宽度,此处计算的是与表单实际宽度相等的.也可以直接在样式中定义. 
			var _txt=null; 
			var _maxCount=parseInt(_input.attr('data-count'));//限制选择个数 
			if(isNaN(_maxCount)){ 
				_maxCount=iset.maxCount 
			} 
			_input.click(function(){ 
				var _left=$(this).offset().left; //左绝对距离 
				var _top=$(this).offset().top+$(this).outerHeight(); //上绝对距离,此处要加上表单的高度 
				var _dropW=$(this).outerWidth()-parseInt($(this).css('border-left-width'))-parseInt($(this).css('border-right-width'))-parseInt(iset.drop.css('paddingLeft'))-parseInt(iset.drop.css('paddingRight')); 
				iset.drop.css({'position':'absolute','left':_left+'px','top':_top+'px','width':_dropW+'px'}); 
				_flag = true;
				iset.drop.show(); 
				iset.drop.bgiframe();//调用bgiframe插件,解决ie6下select的z-index无限大问题 
			}).bind('keyup change',function(){ 
				//可以在此处扩展手动输入标签情况下的相关判断 
				//if语句可避免清空重新选择时第一个字符为逗号 
				if ($(this).val() == '') { 
					_arr = new Array(); 
				}else { 
					_arr = $(this).val().split(iset.separator);//当用户手动删除或修改标签值后更新标签值 
				} 
			}); 
			$(document).click(function(e){ 
				//点击非弹出框区域时关闭弹出框 
				//下面的 if语句是用来判断传入的是class还是id 
				if(iset.name.charAt(0)=='#'){ 
					if(e.target.id!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				}else if(iset.name.charAt(0)=='.'){ 
					if(e.target.className!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				} 
			}); 
			iset.drop.click(function(e){ 
				//阻止弹出框区域默认事件 
				e.stopPropagation(); 
			}); 
			iset.pseudoClass.click(function(){ 
				//标签选择 
				_txt=$(this).text(); 
				//下面的$.inArray是用来判断是否重复 
				//若想反馈重复提示或走出限制个数提示,可改进下面的if语句 
				if(($.inArray(_txt,_arr)==-1) && (_arr.length<_maxCount )){ 
					//_arr.push(_txt); 
					//_inputVal=_arr.join(iset.separator); 
					_inputVal=$(this).text(); 
					// if(_inputVal.charAt(0)==','){ 
					// _inputVal.replace(/,/,'') 
					// } 
					_input.val(_inputVal); 
				} 
			}); 
			//关闭按钮 
			iset.close.click(function(){ 
				iset.drop.hide(); 
			}); 
		} 
	}); 
	
})(jQuery);

(function(){ 
	$.fn.extend({ 
		iSelectTags2:function(options){ 
			var iset={ 
				name:'.tagsbox2',//表单或class或id名 
				drop:$('#dropbox2'),//弹出框定位 
				pseudoClass:$('#dropbox2>p>a'),//可选择的标签定位 
				close:$('em.close'),//关闭按钮定位 
				separator:',',//标签间分隔符,建议使用英文逗号 
				maxCount:10 //默认限制个数,也可以设置表单的data-count值覆盖默认值 
			} 
			options = options || {}; 
			$.extend(iset, options); 
			var _input=$(iset.name); 
			var _inputVal=_input.val(); 
			var _arr=new Array(); //存放标签的数组 
			var _flag = false;//是否已定位
			//弹出框的宽度,此处计算的是与表单实际宽度相等的.也可以直接在样式中定义. 
			var _txt=null; 
			var _maxCount=parseInt(_input.attr('data-count'));//限制选择个数 
			if(isNaN(_maxCount)){ 
				_maxCount=iset.maxCount 
			} 
			_input.click(function(){ 
				var _left=$(this).offset().left; //左绝对距离 
				var _top=$(this).offset().top+$(this).outerHeight(); //上绝对距离,此处要加上表单的高度 
				var _dropW=$(this).outerWidth()-parseInt($(this).css('border-left-width'))-parseInt($(this).css('border-right-width'))-parseInt(iset.drop.css('paddingLeft'))-parseInt(iset.drop.css('paddingRight')); 
				iset.drop.css({'position':'absolute','left':_left+'px','top':_top+'px','width':_dropW+'px'}); 
				_flag = true;
				iset.drop.show(); 
				iset.drop.bgiframe();//调用bgiframe插件,解决ie6下select的z-index无限大问题 
			}).bind('keyup change',function(){ 
				//可以在此处扩展手动输入标签情况下的相关判断 
				//if语句可避免清空重新选择时第一个字符为逗号 
				if ($(this).val() == '') { 
					_arr = new Array(); 
				}else { 
					_arr = $(this).val().split(iset.separator);//当用户手动删除或修改标签值后更新标签值 
				} 
			}); 
			$(document).click(function(e){ 
				//点击非弹出框区域时关闭弹出框 
				//下面的 if语句是用来判断传入的是class还是id 
				if(iset.name.charAt(0)=='#'){ 
					if(e.target.id!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				}else if(iset.name.charAt(0)=='.'){ 
					if(e.target.className!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				} 
			}); 
			iset.drop.click(function(e){ 
				//阻止弹出框区域默认事件 
				e.stopPropagation(); 
			}); 
			iset.pseudoClass.click(function(){ 
				//标签选择 
				_txt=$(this).text(); 
				//下面的$.inArray是用来判断是否重复 
				//若想反馈重复提示或走出限制个数提示,可改进下面的if语句 
				if(($.inArray(_txt,_arr)==-1) && (_arr.length<_maxCount )){ 
					//_arr.push(_txt); 
					//_inputVal=_arr.join(iset.separator); 
					_inputVal=$(this).text(); 
					// if(_inputVal.charAt(0)==','){ 
					// _inputVal.replace(/,/,'') 
					// } 
					_input.val(_inputVal); 
				} 
			}); 
			//关闭按钮 
			iset.close.click(function(){ 
				iset.drop.hide(); 
			}); 
		} 
	}); 
	
})(jQuery);


(function(){ 
	$.fn.extend({ 
		iSelectTags3:function(options){ 
			var iset={ 
				name:'.tagsbox3',//表单或class或id名 
				drop:$('#dropbox3'),//弹出框定位 
				pseudoClass:$('#dropbox3>p>a'),//可选择的标签定位 
				close:$('em.close'),//关闭按钮定位 
				separator:',',//标签间分隔符,建议使用英文逗号 
				maxCount:10 //默认限制个数,也可以设置表单的data-count值覆盖默认值 
			} 
			options = options || {}; 
			$.extend(iset, options); 
			var _input=$(iset.name); 
			var _inputVal=_input.val(); 
			var _arr=new Array(); //存放标签的数组 
			var _flag = false;//是否已定位
			//弹出框的宽度,此处计算的是与表单实际宽度相等的.也可以直接在样式中定义. 
			var _txt=null; 
			var _maxCount=parseInt(_input.attr('data-count'));//限制选择个数 
			if(isNaN(_maxCount)){ 
				_maxCount=iset.maxCount 
			} 
			_input.click(function(){ 
				var _left=$(this).offset().left; //左绝对距离 
				var _top=$(this).offset().top+$(this).outerHeight(); //上绝对距离,此处要加上表单的高度 
				var _dropW=$(this).outerWidth()-parseInt($(this).css('border-left-width'))-parseInt($(this).css('border-right-width'))-parseInt(iset.drop.css('paddingLeft'))-parseInt(iset.drop.css('paddingRight')); 
				iset.drop.css({'position':'absolute','left':_left+'px','top':_top+'px','width':_dropW+'px'}); 
				_flag = true;
				iset.drop.show(); 
				iset.drop.bgiframe();//调用bgiframe插件,解决ie6下select的z-index无限大问题 
			}).bind('keyup change',function(){ 
				//可以在此处扩展手动输入标签情况下的相关判断 
				//if语句可避免清空重新选择时第一个字符为逗号 
				if ($(this).val() == '') { 
					_arr = new Array(); 
				}else { 
					_arr = $(this).val().split(iset.separator);//当用户手动删除或修改标签值后更新标签值 
				} 
			}); 
			$(document).click(function(e){ 
				//点击非弹出框区域时关闭弹出框 
				//下面的 if语句是用来判断传入的是class还是id 
				if(iset.name.charAt(0)=='#'){ 
					if(e.target.id!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				}else if(iset.name.charAt(0)=='.'){ 
					if(e.target.className!=iset.name.substring(1)){ 
						iset.drop.hide(); 
					} 
				} 
			}); 
			iset.drop.click(function(e){ 
				//阻止弹出框区域默认事件 
				e.stopPropagation(); 
			}); 
			iset.pseudoClass.click(function(){ 
				//标签选择 
				_txt=$(this).text(); 
				//下面的$.inArray是用来判断是否重复 
				//若想反馈重复提示或走出限制个数提示,可改进下面的if语句 
				if(($.inArray(_txt,_arr)==-1) && (_arr.length<_maxCount )){ 
					//_arr.push(_txt); 
					//_inputVal=_arr.join(iset.separator); 
					_inputVal=$(this).text(); 
					// if(_inputVal.charAt(0)==','){ 
					// _inputVal.replace(/,/,'') 
					// } 
					_input.val(_inputVal); 
				} 
			}); 
			//关闭按钮 
			iset.close.click(function(){ 
				iset.drop.hide(); 
			}); 
		} 
	}); 
	
})(jQuery);

//插件调用 
$(function(){ 
$('#demo').iSelectTags(); 
$('#demo1').iSelectTags1();
$('#demo2').iSelectTags2();
$('#demo3').iSelectTags3();
}); 

//tipTxt要显示的内容，apos向右移动的距离，vpos向下移动的距离 
function tip(tt,tipTxt,apos,vpos){
	if(apos==undefined){ 
		var apos=0; 
	} 
	if(vpos==undefined){ 
		var vpos=0; 
	} 
	var dads = $("#tipDiv").get(0).style; 
	dads.display="block"; 
	var th = tt;
	var ttop = tt.offsetTop-tt.clientHeight+vpos; //TT控件的定位点高 
	var thei = 25; //TT控件本身的高 
	var tleft = tt.offsetLeft; 
	var tleft = tt.offsetLeft+tt.offsetWidth+apos; 
	var twidth=500; 
	var ttyp = tt.type; 
	while (tt = tt.offsetParent){ 
		ttop+=tt.offsetTop; 
		tleft+=tt.offsetLeft; 
	} 
	dads.top = ttop+thei+0 + "px"; 
	dads.left = tleft + "px"; 
	dads.width =twidth + "px"; 
	$("#taemTip").get(0).innerHTML="<font color='green'>"+tipTxt+"</font>"; 
}
function tip2(id,tt,tipTxt,apos,vpos){
	if(apos==undefined){ 
		var apos=0; 
	} 
	if(vpos==undefined){ 
		var vpos=0; 
	}
	var dads = document.getElementById(id).style;
	dads.display="block"; 
	var th = tt;
	var ttop = tt.offsetTop-tt.clientHeight+vpos; //TT控件的定位点高 
	var thei = 25; //TT控件本身的高 
	var tleft = tt.offsetLeft; 
	var tleft = tt.offsetLeft+tt.offsetWidth+apos; 
	var twidth=500; 
	var ttyp = tt.type; 
	while (tt = tt.offsetParent){ 
		ttop+=tt.offsetTop; 
		tleft+=tt.offsetLeft; 
	}
	dads.top = ttop+thei+ "px"; 
	dads.left = tleft+10 + "px"; 
	dads.width =twidth + "px"; 
	document.getElementById(id).innerHTML="<font size='2' color='red'>"+tipTxt+"</font>"; 
}
function notTip(){ 
	var dads =  $("#tipDiv").get(0).style; 
	dads.display="none"; 
}
function notTip2(id){ 
	var dads =  document.getElementById(id).style; 
	dads.display="none"; 
} 