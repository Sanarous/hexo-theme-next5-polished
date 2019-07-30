{% if theme.carousel.enable %}
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">

.glyphicon-chevron-left:before{
	/*content: "<"*/
	/*background: url(https://site-1258928558.cos.ap-guangzhou.myqcloud.com/left-icon-slides.png);*/
}
.glyphicon-chevron-right:before{
	/*content: ">"*/
}

@media (max-width: 767px){
	.rights{
		display: none;
	}
	.carousel{
		display: none;
	}
	.slide{
		width: 100% !important;
		height: 100% !important;
	}
	.tag-cloud{
		display: none;
	}
}

.carousel{
	width: 65%;
	height: 100%;
	position: relative;
}

.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}

.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  /*width: 15%;*/
  /*opacity: 0.5;*/
  /*filter: alpha(opacity=50);*/
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0px;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
/*.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  background: url('https://site-1258928558.cos.ap-guangzhou.myqcloud.com/icon-slides.png');
  background-position-x: -83px; 
  left: 9px;
}*/

.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left:hover {
  background: url('https://site-1258928558.cos.ap-guangzhou.myqcloud.com/icon-slides.png');
  left: 9px;
}
/*.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  background: url('https://site-1258928558.cos.ap-guangzhou.myqcloud.com/icon-slides.png');
  background-position-x: -125px; 
  right: 0px;
}*/

.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right:hover {
  background: url('https://site-1258928558.cos.ap-guangzhou.myqcloud.com/icon-slides.png');
  background-position-x: -41px; 
  right: 0px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-indicators {
  position: absolute;
  bottom: 2px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 30px;
  height: 3px;
  margin: 5px;
  text-indent: -999px;
  border: 1px solid #bbb;
  cursor: pointer;
  background-color: rgba(0,0,0,.24);
}
.carousel-indicators .active {
  width: 30px;
  height: 3px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 60px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    /*margin-right: -10px;*/
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 0px;
  }
}
</style>
<div height="320px" width="100%" style="border: 0px; overflow: hidden; border-radius: 10px;" scrolling="no">
			
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3500" style="float:left">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
		{% set index = 0 %}
		{% for item in theme.carousel.item %}

			<li data-target="#myCarousel" data-slide-to="{{index}}"></li>
			{% set index = index+1 %}

		{% endfor %}
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner" style="height: 280px; border-radius: 10px; width: 100%;">

		{% set act = 0 %}
		 {% for item in theme.carousel.item %}
		
	    	{% if act===0 %}
				<a class="item active" href="{{ url_for(item.link) }}" target="_blank" style="height: 100%;">
					<img class="nofancybox" src="{{item.img}}"   style="width: 100%; height: 100%" >
				</a>
				{% set act = 1 %}
				{% elseif act===1 %}
					<a class="item" href="{{ url_for(item.link) }}" target="_blank" style="height: 100%;">
						<img class="nofancybox" src="{{item.img}}"  style="width: 100%; height: 100%;" >
					</a>
			{% endif %}

		{% endfor %}

		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		    
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
		</a>
	</div>

	<div  class="rights" style="width: 30%; height: 300px; margin-right: 0px;margin-left: 20px;float: left;">
	
	   <!-- 天气插件 -->
       <iframe class="blog-weather" width="420" scrolling="no" height="15%" frameborder="0" allowtransparency="true" src="https://i.tianqi.com/index.php?c=code&id=12&icon=1&py=wuhan&num=2&site=12"></iframe>

	   <!-- 关于博主 -->
	   <a href="/about/"  target="_blank" style="text-align: right; width: 100%;"><img class="blog-about nofancybox" src="https://site-1258928558.cos.ap-guangzhou.myqcloud.com/about.png" width="100%"/></a>
	   <div style="height: 9px;"></div>

	   <!-- 推荐阅读 -->
	   <a href="/books/" target="_blank" style="width: 100%; text-align: right;"><img  class="blog-read nofancybox" src="https://site-1258928558.cos.ap-guangzhou.myqcloud.com/read.png" width="100%"/></a>
	   <div style="height: 9px;"></div>
	
	   <!-- 光影留念 -->
	  <a href="/photos/" target="_blank" style="width: 100%; text-align: right;"><img class="blog-photo nofancybox" src="https://site-1258928558.cos.ap-guangzhou.myqcloud.com/photo.png" width="100%"/></a>
	  <div style="height: 9px;"></div>

	  <!-- 留下脚印 -->
	  <a href="/messageboard/"><img class="blog-messageboard nofancybox" src="https://site-1258928558.cos.ap-guangzhou.myqcloud.com/banner-s-6-c4d6335bfd688f2ca1115b42b04c28a7_meitu_5.png"/></a>
    </div>

<div class="tag-cloud">
  <div class="tag-cloud-tags" id="tags">
    {{ tagcloud({min_font: 14, max_font: 14, amount: 300, color: true, start_color: '#fff', end_color: '#fff'}) }}
  </div>
</div>
<br>

<script type="text/javascript">
   var alltags=document.getElementById('tags');
   var tags=alltags.getElementsByTagName('a');

   for (var i = tags.length - 1; i >= 0; i--) {
     var r=Math.floor(Math.random()*75+130);
     var g=Math.floor(Math.random()*75+100);
     var b=Math.floor(Math.random()*75+80);
     tags[i].style.background = "rgb("+r+","+g+","+b+")";
   }
</script>

<style type="text/css">
	div#posts.posts-expand .tag-cloud a{
   		background-color: #f5f7f1;
   		border-radius: 6px;
   		padding-left: 10px;
   		padding-right: 10px;
   		margin-top: 18px;
 	}

 	.tag-cloud a{
   		background-color: #f5f7f1;
   		border-radius: 4px;
   		padding-right: 5px;
   		padding-left: 5px;
   		margin-right: 5px;
   		margin-left: 0px;
   		margin-top: 8px;
   		margin-bottom: 0px;
 	}

 	.tag-cloud a:before{
       content: "🔖";
 	}

 	.tag-cloud-tags{
   	   text-align: left;
   	   counter-reset: tags;
 	}
</style>
{% endif %}