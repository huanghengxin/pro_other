<template>
    <div>
        <div v-show="uname">
            <div class="header_div">
                <router-link to="/">主页</router-link> / 
                <router-link to="/shop">店</router-link> /
                <span class="header_name">{{uname}}</span> 
                <span class="header_span">的购物车</span>
            </div>
            <div class="see" v-show="!nul">
                    <img src="../assets/yes.png" alt="">
                    <router-link to="/shop">继续购物</router-link>
            </div>
            <div class="cantainer" v-show="!nul">
                <div class="left" >
                    <div class="left_header">
                        <span>产品</span>
                        <span>数量</span>
                        <span>价格</span>
                        <span>小计</span>
                    </div>
                    <div v-for="(e,i) of car" :key="i" class="list_style">
                        <img src="../assets/no.png" alt=""  @click="del(i)" class="del">
                        <img :src="e.list.src" alt="" class="img_style">
                        <span class="name_sytle">{{e.list.name}}</span>
                        <div class="d-flex">
                            <span @click="jian(i)" class="jian">-</span><span class="conut">{{e.conut}}</span><span class="jia" @click="jia(i)">+</span>
                        </div>
                        <span class="sprice_style">${{e.list.price.toFixed(2)}}</span>
                        <span class="xioaji">${{(e.conut*e.list.price).toFixed(2)}}</span>
                    </div>
                </div>
                <div class="right">
                    <div>购物车总计:</div>
                    <span>${{(allprice).toFixed(2)}}</span>
                    <div class="jiesuan" @click="jiesuan">进行结算</div>
                </div>
            </div>
        </div>
        <div v-show='uname==undefined||uname==""' class="no_name">
            您还没登录,请先<router-link to="/login">登陆</router-link>吧
        </div>
        <div v-show="uname!==undefined">
            <div v-show="nul" class="no_name">
                您的购物车是空的,<br>
                再去
                <router-link to="/shop">逛逛</router-link>吧
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            uname:'',
            car:[],
            all:'',
            nul:false,
            allprice:0,
            timer:""
        }
    },
    methods:{
        jia(i){
            this.allprice+=this.car[i].list.price
            this.car[i].conut++;
            if(this.timer!=""){
                clearTimeout(this.timer);
            }
            this.timer = setTimeout(()=>{
                this.axios.get('/update',{
                    params:{
                        carid:this.car[i].carid,
                        conut:this.car[i].conut
                    }
                })
            },200)
            // for(var i=0;i<this.car.length;i++){
            //     this.allprice=this.car[i].conut*this.car[i].list.price + this.car[i].list.price
            // }
        },
        jian(i){
            if(this.car[i].conut>1){
                this.allprice-=this.car[i].list.price
                this.car[i].conut--;
                if(this.timer!=""){
                    clearTimeout(this.timer)
                }
                this.timer = setTimeout(()=>{
                    this.axios.get('/update',{
                        params:{
                            carid:this.car[i].carid,
                            conut:this.car[i].conut
                        }
                    })
                },500)
            }
        },
        del(i){
            // console.log(this.car[i].carid)
            let r = confirm('您确认移除 '+this.car[i].list.name+' 该商品吗?')
            if(r == true){
                this.allprice-=this.car[i].conut*this.car[i].list.price
                this.axios.get('/del',{
                    params:{
                        carid:this.car[i].carid
                    }
                })
                this.car.splice(i,1)
                if(this.car.length==0){
                    this.nul=true
                }
            }
        },
        jiesuan(){
            alert('将购物车的信息添加到成交列表中,然后清空已结算了的商品信息')
        }
    },
    mounted(){
        this.uname = this.storageUtil.readTodos().uname
        console.log("111"+this.uname+'111')
        this.axios.get('/car',{
            params:{
                username:this.uname
            }
        }).then((res)=>{
            // console.log(res.data[0].id)
            if(res.data.length>0){
                for(var i=0;i<res.data.length;i++){
                    let listid = res.data[i].list_id
                    let conut = res.data[i].conut
                    let carid = res.data[i].id
                    this.axios.get('/articlei',{
                        params:{
                            id:listid
                        }
                    }).then((res)=>{
                        let list = res.data[0]
                        this.car.push({list,conut,carid})
                        this.allprice += list.price*conut
                    })
                }
            }else{
                this.nul=true
            }
            // console.log(this.car)
        })
    }
}
</script>
<style  scoped>
    .cantainer{
        /* padding-top: 30px; */
        width: 65%;
        margin: auto;
        display: flex;
        /* justify-content: center; */
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
    .left_header{
        padding: 5px 0;
        border-bottom: 2px solid #ddd;
        display: flex;
    }
        .see{
        width: 65%;
        margin: 50px auto;
        color: #2f9a4c;
        padding: 15px 8px;
        font-size: 16px;
        border: 1px solid #2f9a4c;
        line-height: 24px;
    }
    .see>img{
        padding-bottom: 3px;
        margin-right: 8px;
    }
    .see>a{
        display: block;
        width: 100px;
        font-size: 14px;
        line-height: 40px;
        text-align: center;
        background: #10ac62;
        color:#fff;
        text-decoration: none;
        float: right;
        margin-top:-7.5px ;
    }
    .left_header>span{
        font-size: 16px;
        color: #555;
        font-weight: 600;
    }
    .left_header>span:first-child{
        display: block;
        width: 55%;
    }
    .left_header>span:nth-child(2){
        width: 20%;
    }
    .left_header>span:nth-child(3){
        width: 10%;
    }
    .left_header>span:last-child{
        display: block;
        width: 15%;
        text-align: right;
    }
    .left{
        width: 70%;
        padding: 0 20px;
        border-right: 1px solid #aaa;
    }
    .d-flex{
        width: 100px;
        display: flex;
        margin-top: 30px;
    }
    .right{
        width: 30%;
        padding: 0 0 0 20px;
        /* background-color: burlywood; */
    }
    .right>span{
        display: block;
        text-align: center;
        margin: 50px 0;
        color:#000; 
    }
    .right>div:first-child{
        padding: 5px 0;
        border-bottom: 2px solid #ddd;
        font-size: 16px;
        color: #555;
        font-weight: 600;
    }
    .right>div:last-child{
        cursor: pointer;
    }
    .jiesuan{
        text-align: center;
        line-height: 40px;
        border: 1px solid #333;
        margin-bottom: 350px;
    }
    .list_style{
        display: flex;
        justify-content: space-between;
        line-height: 86px;
    }
    .del{
        margin: 5%;
        width: 2.5%;
        height: 2.5%;
        cursor: pointer;
    }
    .img_style{
        width: 15%;
        height: 100%;
        /* margin: 0 40px; */
    }
    .name_sytle{
        white-space: nowrap;
        overflow: hidden;
        width: 20%;
        font-size: 14px;
        color: #000;
        margin: 0 40px;
    }
    .sprice_style{
        width: 50px;
        margin: 0 40px;
    }
    .jian,.jia,.conut{
        line-height: 30px;
        text-align: center;
        border: 1px solid ;
        display: block;
        height: 30px;
        width: 20px;
        cursor: pointer;
    }
    .conut{
        border-left: 0;
        border-right: 0;
        min-width: 25px;
        text-align: center;
        cursor: text;
    }
    .xioaji{
        text-align: right;
        width: 20%;
    }
    .no_name a{
        text-decoration: none;
        color: chartreuse;
    }
    .header_name{
        color: #efc17c;
    }
    .header_span{
        text-decoration: none;
        line-height: 60px;
        color: #aaa;
        font-size: 14px;
        font-style: 微软雅黑;
        margin-left: 20px;
    }
    .header_div{
        border-top: 1px solid #3D3D3D;
        background-color: black;
        color: #aaa;
        padding-left: 50px;
    }
    .header_div>a{
        text-decoration: none;
        line-height: 60px;
        color: #aaa;
        font-size: 14px;
        font-style: 微软雅黑;
    }
    .no_name{
        height: 300px;
        background-color: #222;
        color: #efc17c;
        text-align: center;
        padding-top: 200px;
        font-size: 18px;
        font-weight: 100;
    }
</style>