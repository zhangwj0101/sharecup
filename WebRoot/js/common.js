/******************************翻页*******************************/
/**
* 参数 pagesize：每页大小
* 参数 pagenum：目的页号
* 参数 pagecount：总页数
* 参数 ifbutturn：是否为跳转翻页
*/
function PageTurning(pagesize, pagenum, pagecount, ifbutturn) {
	var t_pagesize = parseInt(pagesize);
	var t_pagenum = parseInt(pagenum);
	var t_pagecount = parseInt(pagecount);
	if (ifbutturn == "true") {
		t_pagenum = parseInt(document.getElementById("goalPageNum").value);
		if(isNaN(t_pagenum)){
			t_pagenum = 1;
		}
	}
	if (t_pagenum > t_pagecount) {
		t_pagenum = t_pagecount;
	}
	if (t_pagenum < 1) {
		t_pagenum = 1;
	}
	document.getElementById("pageSize").value = t_pagesize;
	document.getElementById("pageNum").value = t_pagenum;
	document.getElementById("pageForm").submit();
}
function changeItem(index,path)
{
   if(index==1){
   		document.getElementById('methodsel').value = 'group';
   }else{
   		document.getElementById('methodsel').value = 'person';
   }
  
   document.getElementById('myformsel').submit();
}

function expandit(el) {
        obj = "page" + el;
        obj2 = "main" + el;
        if (document.getElementById(obj).style.display == "none") {
        	if(el==2){
        		$("#flag").val('1');
        	}
            document.getElementById(obj).style.display = "block";
        }
        else {
        	if(el==2){
        		$("#flag").val('2');
        	}
            document.getElementById(obj).style.display = "none";
        }

}