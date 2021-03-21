//选择器
function $a(id,tag){var re=(id&&typeof id!="string")?id:document.getElementById(id);if(!tag){return re;}else{return re.getElementsByTagName(tag);}}

//焦点滚动图 点击移动
function movec()
{
	// var wrap=document.getElementById('xifan_sub_box'),
	// 	pic=document.getElementById('pic').getElementsByTagName("li"),
	// 	list=document.getElementById('list').getElementsByTagName('li'),
	// 	index=0,
	// 	timer=null;
	// // 定义并调用自动播放函数
	// timer = setInterval(autoPlay, 2000);
	//
	// // 鼠标划过整个容器时停止自动播放
	// wrap.onmouseover = function () {
	// 	clearInterval(timer);
	// }
	//
	// // 鼠标离开整个容器时继续播放至下一张
	// wrap.onmouseout = function () {
	// 	timer = setInterval(autoPlay, 2000);
	// }
	// // 遍历所有数字导航实现划过切换至对应的图片
	// for (var i = 0; i < list.length; i++) {
	// 	list[i].onmouseover = function () {
	// 		clearInterval(timer);
	// 		index = this.innerText - 1;
	// 		changePic(index);
	// 	};
	// };
	//
	// function autoPlay () {
	// 	if (++index >= pic.length) index = 0;
	// 	changePic(index);
	// }
	//
	// // 定义图片切换函数
	// function changePic (curIndex) {
	// 	for (var i = 0; i < pic.length; ++i) {
	// 		pic[i].style.display = "none";
	// 		list[i].className = "";
	// 	}
	// 	pic[curIndex].style.display = "block";
	// 	list[curIndex].className = "on";
	// }



	var o=$a("xifan_bd1lfimg","");
	var oli=$a("xifan_bd1lfimg","dl");
    var oliw=oli[0].offsetWidth; //每次移动的宽度	 
	var ow=o.offsetWidth-2;
	var dnow=0; //当前位置	
	var olf=oliw-(ow-oliw+10)/2;
		o["scrollLeft"]=olf+(dnow*oliw);
	var rqbd=$a("xifan_bd1lfsj","ul")[0];
	var extime;
	for(var i=1;i<oli.length;i++){rqbd.innerHTML+="<li>"+i+"</li>";}
	var rq=$a("xifan_bd1lfsj","li");
	for(var i=0;i<rq.length;i++){reg(i);};
	oli[dnow].className=rq[dnow].className="show";
	var wwww=setInterval(uu,2000);

	function reg(i){rq[i].onclick=function(){oli[dnow].className=rq[dnow].className="";dnow=i;oli[dnow].className=rq[dnow].className="show";mv();}}
	function mv(){clearInterval(extime);clearInterval(wwww);extime=setInterval(bc,15);wwww=setInterval(uu,4000);}
	function bc()
	{
		var ns=((dnow*oliw+olf)-o["scrollLeft"]);
		var v=ns>0?Math.ceil(ns/10):Math.floor(ns/10);
		o["scrollLeft"]+=v;if(v==0){clearInterval(extime);oli[dnow].className=rq[dnow].className="show";v=null;}
	}
	function uu()
	{
		if(dnow<oli.length-2)
		{
			oli[dnow].className=rq[dnow].className="";
			dnow++;
			oli[dnow].className=rq[dnow].className="show";
		}
		else{oli[dnow].className=rq[dnow].className="";dnow=0;oli[dnow].className=rq[dnow].className="show";}
		mv();
	}
	o.onmouseover=function(){clearInterval(extime);clearInterval(wwww);}
	o.onmouseout=function(){extime=setInterval(bc,15);wwww=setInterval(uu,4000);}
}