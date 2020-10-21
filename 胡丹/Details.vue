<template>
    <div>
        <div class="details">
			<div class="pic">
				<img :src="product.pic1">
				<img :src="product.pic2">
			</div>
			<div class="content">
				<div class="title"><a href="index.html">{{product.brand}}</a></div>
				<div class="proname">{{product.title}}</div>
				<div class="price">¥{{product.price.toFixed(2)}}</div>
				<div class="trans-buy">
					<span>换购</span>
					<p>换购超巨型永生花礼盒</p>
				</div>
				<div class="car" @click="add">加入购物车</div>
				<div class="every">
					<div class="para">
						<div class="every_title">规格参数</div>
						<div class="every_trans">composition</div>
						<div class="every_text">
							<p>{{product.composition}}</p>
							<!-- <p>花盒尺寸：70cm*10.5cm*18.5cm</p> -->
						</div>
					</div>
					<div class="story">
						<div class="every_title">品牌故事</div>
						<div class="every_trans">brand story</div>
						<div class="every_text">
							{{product.story}}
						</div>
					</div>
					<div class="reason">
						<div class="every_title">推荐理由</div>
						<div class="every_trans">style notes</div>
						<div class="every_text">
							{{product.recommend}}
						</div>
					</div>
					<div class="explain">
						<div class="every_title">退换货说明</div>
						<div class="every_trans">return & exchange</div>
						<div class="every_text">
							<p>普通商品如有质量问题，请在签收后7日内联系客服。</p>
							<p>鲜花、永生花；内衣、内裤、文胸、塑身衣、塑身裤、泳衣、丝袜、连裤袜、真丝睡衣（等贴身物品）；高级珠宝、真丝床品、已安装完成的家具床垫类、已开封的彩妆类、定制商品等不接受7天无理由退换货，如有质量问题，请在签收后24小时内联系客服。</p>
							<p>详见《野兽派线上平台退换货政策》</p>
							<p><a href="#">查看详细说明</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
        <my-footer></my-footer>  

    </div>
</template>

<script>
export default {
	props:["lid"],
	data(){
		return{
			product:{price:0},
		}
	},
	methods:{
		add(){
			this.axios.post('/add_car',`num=1&pid=${this.product.pid}&brand=${this.product.brand}&title=${this.product.title}&pic=${this.product.pic3}&price=${this.product.price}`).then(result=>{
				console.log(result.data);
				if(result.data==1 || result.data==2){
					alert("加入购物车成功")
				}else if(result.data==0 || result.data==3){
					alert("加入失败")
				}
			})
		}
	},
	mounted(){
		this.axios.get('/details',{
			params:{ lid:this.lid }
		}).then(result=>{
			//console.log(result.data);
			this.product=result.data[0];
			//console.log(this.product)
		})
		//console.log(this.lid);
	}
}
</script>

<style scoped>
*{margin: 0;padding: 0;}
.details{
	width: 960px;
	margin: 0 auto;
	/* border: 1px solid #000; */
	display: flex;
	justify-content: space-between;
	padding: 10px 0;
}
.pic{
	width: 670px;
}
.content{
	width: 240px;
}
.title{
	font-size: 25px;
	font-weight: bold;
	line-height: 35px;
	font-style: italic;
	font-family:Georgia,serif,arial;
    margin-bottom: 15px;
    text-align: left;
    
}
.title a{
	color: #000;
	text-decoration: none;
}
.proname{
	font-size: 14px;
	color: #999;
	/* font-weight: normal; */
    line-height: 20px;
    text-align: left;
    
}
.price{
	color: #004C46;
    font-size: 20px;
    text-align: left;
    
}
.trans-buy{
	display: flex;
	font-size: 13px;
	border-top:1px solid #e1e1e1;
	border-bottom:1px solid #e1e1e1 ;
	padding-top:10px ;
	padding-bottom:10px ;
	margin-top: 5px;
}
.trans-buy>span{
	display: block;
	background-color: #004C46;
	color: #fff;
	width: 35px;height: 20px;
	line-height: 20px;
	text-align: center;
	margin-right: 10px;
}
.car{
	height: 30px;
	background: #000;
	color: #fff;
	font: bold 16px/30px Arial,Helvetica,sans-serif;
	text-align: center;
	margin: 10px 0px;
	cursor: pointer;
}
.every{
	font-size: 13px;
}
.every>div+div{
	margin-top: 30px;
}
.para{
	padding-top: 10px;
	/* color: #828282; */
}
.every_title{
	color: #212121;
	font-weight: lighter;
	margin-bottom: 3px;
    text-align: left;
	
}
.every_trans{
	font-family: "Times New Roman";
	border-bottom: 1px solid #000;
	padding-bottom: 3px;
    margin-bottom: 10px;
    text-align: left;
    
}
.every_text{
	color: #828282;
    line-height: 1.5;
    text-align: left;
    
}
.show-details .every_text>p:nth-child(4){
	margin-top:20px;
}
.explain .every_text>p>a{
	color: #6382A6;
	text-decoration: none;
}
</style>