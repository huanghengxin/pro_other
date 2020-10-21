<template>
    <div>
        <div id="car">
			<h4>购物车 SHOPPING BAG</h4>
			<div id="allck">
				<div>
					<input id="all"  type="checkbox" v-model="checked" @click="selAll">
					<span>全选</span>
				</div>
				<div>
					<ul>
						<li>单价</li>
						<li>件数</li>
						<li>小计</li>
						<li>操作</li>
					</ul>
				</div>
			</div>
			<div id="main">
				<div class="commodity" v-for="(item,index) of products" :key="item.cid">
					<div class="check" >
						<input type="checkbox"  v-model='checkboxList'  @click="item.checked = !item.checked" :value="item.cid">
					</div>
					<div class="pic">
						<router-link :to="`/details/${item.pid}`"><img :src="item.pic"></router-link>
					</div> 
					<div class="details">
						<p>{{item.brand}}</p>
						<p class="title">{{item.title}}</p>
						<p class="price">价格：{{item.price}}元</p>
					</div>
					<div class="single">￥{{(Number(item.price)).toFixed(2)}}</div>
					<div class="num">
						<button @click="item.num>1? item.num--:item.num">-</button>
						<span class="count">{{item.num}}</span>
						<button @click="item.num++">+</button>
					</div>
					<div class="small">￥{{(Number(item.price*item.num)).toFixed(2)}}</div>
					<div  @click="remove(index)">删除</div>
				</div>
			</div>			
			<div id="last">
				<div><a href="#">删除选中商品</a></div>
				<div>
					<span>总计：￥</span>
					<span>{{ total.toFixed(2) }}</span>
					<a href="#">立即结算</a>
				</div>
			</div>
		</div>
    </div>
</template>

<script>
export default {
	props:["pid"],
    data(){
		return{
			products:[],	
			checked:false,	
			checkboxList:[],
		}
	},
	watch:{
		checkboxList:{
			handler:function(){
				if(this.checkboxList.length===this.products.length){
					this.checked=true
				}else{
					this.checked=false
				}
			}
		}
	},
	methods:{
		remove:function(index) { //移除商品
		alert("确认删除该商品")
  			this.products.splice(index, 1);
 		},
		selAll:function(){ //全选
			if(this.checked){
				this.checkboxList=[];
			}else{
				this.checkboxList=[];
				this.products.forEach(item=>{
					this.checkboxList.push(item.cid)
				})
			}
		},
		
	},
	mounted(){
		this.axios.get('/car')
		.then(result=>{
			this.products=result.data
			console.log(result.data);
		})		
	},
	computed: {
 		total: function () { //计算总价
			let total = 0;
			let arr=this.checkboxList;
			//console.log(this.checkboxList[0],this.checkboxList[1])
			for(var i=0;i<arr.length;i++){
				total+=(this.products[arr[i]-1].num)*(this.products[arr[i]-1].price)
			}			
  			return total
 		}
 	}
}
</script>

<style scoped>
*{margin: 0;padding: 0;}
button{
	cursor: pointer;
}
#car{
	width: 960px;
	margin: 0 auto;
	/* text-align: center; */
}
#car>h4{
	padding: 10px 20px;
	background-color: #000000;
    color:#fff ;
    text-align: left;
}
#allck{
	padding: 10px 20px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
    border-bottom: 1px solid #E1E1E1;
    text-align: left;
}
#allck>div{
	width: 50%;
	float: left;
	padding-bottom: 10px;
}
#allck>div:first-child>span{
	margin-left: 20px;
}
#allck>div:nth-child(2)>ul{
	list-style: none;
	display: flex;
	justify-content: space-between;
}
#main{
	margin-bottom: 40px;
}
.commodity{
	padding: 20px;
	border-bottom:1px solid #E1E1E1 ; 
	height: 115px;
	/* margin-bottom: 50px; */
}
#allbuy>p{
	padding-top:15px ;
	padding-bottom:15px ;
	border-bottom:1px solid #E1E1E1 ;
}
#allbuy>div{
	padding-top:15px;
	padding-bottom:15px;
	height: 1000px;
}
#last{
	border-top:1px solid #E1E1E1;
	width: 960px; 
	margin: 0 auto ;
	font-size: 14px;
	height: 60px;
	line-height: 60px;
	position: fixed;
	bottom: 0px;
	background-color: #fff;
}
#last>div:first-child{
	width: 70%;
	float: left;
	text-align: left;
}
#last>div:first-child>a{
	text-decoration: none;
	color: #000;
}

#last>div:nth-child(2){
	display: flex;
}
#last>div:nth-child(2)>span:nth-child(2){
	font-family: Georgia;
	font-weight: bold;
}
#last>div:nth-child(2) a{
	text-decoration: none;
	display: block;
	height: 35px;width: 120px;
	line-height: 35px;
	background-color: #000;
	color: #fff;
	text-align: center;
	margin-top:12px ;
	margin-left: 15px;
}
.pic{
	width: 110px;height: 115px;
}
.pic img{
	height: 100%;
}
.commodity>div{
	float: left;
	font-size: 14px;
}
.commodity>div+div{
	margin-left: 15px;
}
.commodity>div:last-child{
	cursor: pointer;
}
.check{
	line-height: 115px;
}
.price{
	color: #838383;
}
.title,.price{
	margin-top: 10px;	
}
.details{
	width: 275px;
	text-align: left;
	padding-left: 10px;
}
.single{
	width: 137px;
	text-align: left;
}
button{
	width: 30px;height: 30px;
	background: 0;
	border: 1px solid #ccc;
	outline: 0;
}
.count{
	display: inline-block;
	width: 29px;
	height: 29px;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	line-height: 29px;
	text-align: center;
}
.num{
	width: 120px;
	text-align: left;
}
.small{
	width: 137px;
	text-align: left;

}
</style>