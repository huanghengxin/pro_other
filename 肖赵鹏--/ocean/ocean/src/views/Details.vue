<template>
    <div class="bg">
        <div class="header">
            <router-link to="/">主页</router-link> / 
            <router-link to="/shop">店</router-link> / 
            <span>{{this.article[0].name}}</span>
        </div>
        <!-- <div v-show="none" class="none">
            <table></table>
           <span>没有找到{{something}}该商品</span>
        </div> -->
        <div v-show="!none" class="parent">
            <!-- 左 -->
            <div class="left" v-for="(e,i) of article" :key="i">
                <div class="left_1">
                    <img :src="e.src" alt="" class="left_img">
                    <div>
                        <p class="left_name">{{e.name}}</p>
                        <div class="style"></div>
                        <p class="left_price">$ {{e.price.toFixed(2)}}</p>
                        <span class="left_title">{{e.title}}</span>
                        <p class="left_cate">分类: {{e.categories}}</p>
                        <div style="display:flex; margin-top:20px;">
                            <span @click="addcar" class="btn">添加到购物车</span>
                            <div class="btn_prant">
                                <button @click="jian" class="btn_left">-</button>
                                <span class="span_center">{{number}}</span>
                                <button @click="jia" class="btn_right">+</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="b_des">
                        <p>描述</p>
                    </div>
                    <div v-html="e.description" class="last_div"></div>
                </div>
            </div>
            <!-- 右 -->
            <div class="right">
                <div :id="e.id" class="right_a"  v-for="(e,i) of stock" :key="i">
                    <img :src="e.src" alt="" class="right_img">
                    <div>
                        <p class="title_style">{{e.name}}</p>
                        <span class="price_style">$ {{e.price.toFixed(2)}}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:'',
            lname:'',
            none:true,
            number:1,
            something:'',
            article:[{price:0,name:''}],//储存服务器返回的该商品信息     左
            stock:[]//储存所有商品信息
        }
    },
    methods:{
        jian(){
            if(this.number>1){
                this.number--
            }
        },
        jia(){
            this.number++
        },
        addcar(){
            this.uname=this.storageUtil.readTodos().uname
            if(this.uname==undefined){
                // alert('没有登录,请您先登录吧')
                this.$router.push('/shopcar')
            }else{
                // console.log(this.uname,'商品数量'+this.number,'商品id'+this.article[0].id)
                this.axios.get('/add',{
                    params:{
                        username:this.uname,
                        listid:this.article[0].id,
                        conut:this.number
                    }
                }).then((res)=>{
                    // console.log(res.data.conut)
                    window.open('http://localhost:8080/shopcar','_self')
                })
                // this.$router.push('/shopcar')
            }
        }
    },
    mounted(){
        //获取传过来的ID
        //this.$route.params.参数名称
        let id= this.$route.params.id;
        //发送带有ID参数的请求
        this.axios.get("/articlei?id="+id)
        .then(res=>{
            //将服务器的响应信息放在变量article{}中
            this.article=res.data;
            this.lname=res.data.name;
            if(this.article){
                this.none=false
            }
        })
        this.axios.get('/shop1').then((res)=>{
            this.stock= res.data
        })
    }
}
</script>
<style scoped>
    .btn_prant{
        display: flex;
    }
    .btn{
        width:140px;
        height:43px;
        line-height: 43px;
        text-align: center;
        cursor: pointer;
        color: black;
        background: #efc17c;
        margin-right: 20px;
    }
    .btn_left,.btn_right,.span_center{
        color: #efc17c;
        border: 1px solid #efc17c;
        background: #222;
        display: block;
        width: 36px;
        text-align: center;
        line-height: 39px;
    }
    .span_center{
        border-right: 0;
        border-left: 0;
    }
    .bg{
        background-color: #222222;
    }
    .header{
        border-top: 1px solid #3D3D3D;
        background-color: black;
        color: #aaa;
        padding-left: 50px;
    }
    .header>a{
        text-decoration: none;
        line-height: 60px;
        color: #aaa;
        font-size: 14px;
        font-style: 微软雅黑;
    }
    .header>span{
        line-height: 60px;
        color: #aaa;
        font-size: 14px;
        font-style: 微软雅黑;
    }
    .none{
        height: 500px;
        color: #efc17c;
        text-align: center;
        font-size: 30px;
        font-weight: 100;
    }
    .none>span{
        display: block;
        margin: 200px;
    }
    .parent{
        margin: auto;
        width: 63%;
        display: flex;
        justify-content: center;
        padding: 100px 0;
    }
    .left{
        width: 75%;
    }
    .left_img{
        width: 35%;
        max-height: 300px;
        border-radius: 5px;
        margin-right: 33px;
    }
    .left_name{
        margin-top: -5px;
        font-size: 20px;
        color: #efc17c;
    }
    .left_price{
        font-size: 22px;
        color: #ffffff;
        margin-bottom: 15px;
        line-height: 22px;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif;
        font-weight: 100;
    }
    .left_title{
        font-size: 12px;
        color: #888;
    }
    .left_cate{
        margin-top: 30px;
        border-top: 1px dotted #ddd;
        font-size: 15px;
        color: #777;
        line-height: 35px;
    }
    .right{
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        width: 25%;
        text-align: center;
        color: #c6a86f;
    }
    .right_img{
        width: 100%;
        border-radius:5px; 
        height: 60%;
    }
    .right_a{
        margin: 20px 0;
        width: 60%;
        height: 235px;
    }
    .left_1{
        display: flex;
    }
    .style{
        margin: 30px 0;
        width: 50px;
        height: 3px;
        border-radius: 3px;
        background-color: #ddd;
    }
    .title_style{
        margin-top: 20px;
        font-size: 13px;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
    .price_style{
        font-size: 16px;
        font-weight: 100;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
    .b_des{
        margin-top: 30px;
        border-top: 1px #aaa solid;
    }
    .b_des>p{
        width: 34px;
        margin: 0;
        padding: 8px;
        border-top: 4px solid #efc17c;
        color: #efc17c;
    }
</style>
<style>
    .last_div{
        color:#777;
    }
    .last_div>p{
        font-weight: 700;
        color: #fff;
        margin: 20px 0;
    }
    .last_div>span{
        font-size: 15px;
        line-height: 30px;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
</style>