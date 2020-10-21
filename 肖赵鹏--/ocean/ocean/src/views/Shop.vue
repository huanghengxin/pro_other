<template>
    <div>
        <div class="header">
            <router-link to="/">主页</router-link> / 
            <router-link to="/shop">店</router-link>
        </div>
        <div class="body">
            <table></table>
            <h1 class="style_h1">正在热销</h1>
            <ul>
                <li v-for="(e,i) of stock" :key="i">
                   <router-link :to='"/details/"+e.id' :id="e.id">
                    <img :src="e.src" alt="">
                    <div>
                        <p class="title_style">{{e.name}}</p>
                        <span class="price_style">$ {{e.price.toFixed(2)}}</span>
                    </div>
                   </router-link>
                </li>
            </ul>
            <h1 class="style_h1">即将来临</h1>
            <div class="coming">
                <div v-for="(e,i) of coming" :key="i" class="coming_child">
                    <img :src="e.src" alt="">
                    <div class="coming_name">
                        <p>{{e.name}}</p>
                        <span>{{e.categories}}</span>
                    </div> 
                </div> 
            </div>
            <table></table>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            stock:[],
            coming:[],
        }
    },
    methods:{
        // change_id(){
        //     this.storageUtil.saveTodos({list_id:this.id})
        // }
    },
    mounted(){
        this.axios.get('/shop1').then((res)=>{
            this.stock= res.data
        })
        this.axios.get('/coming').then((res)=>{
            this.coming= res.data
        })
    }
}
</script>
<style scoped>
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
    .body{
        font-weight: 200;
        color: #efc17c;
        text-align: center;
        background-color: #222;
    }
    .body>ul{
        list-style: none;
    }
    .body>ul>li{
        margin: 40px auto;
    }
    .body>ul>li a{
        text-decoration: none;
        color: #efc17c;
    }
    .style_h1{
        border: 1px solid #efc17c;
        width: 62%;
        font-size: 15px;
        line-height: 52px;
        margin: 60px auto 40px ;
    }
    .title_style{
        margin: 10px 0;
        font-size: 13px;
    }
    .price_style{
        font-size: 16px;
        font-weight: 100;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
    .price_style{
        font-size: 16px;
    }
    .coming{
        width: 62%;
        margin: auto;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 140px;
    }
    .coming_child:nth-child(n){
        margin: 0.7% 0;
        width: 32.5%;

    }
    .coming_child>img{
        width: 100%;
    }
    .coming_name{
        text-align: center;
        background-color: #333;
        color: #c6a86f;
    }
    .coming_name>p{
        margin: 0;
        display: block;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif;
        font-size: 13px;
        padding:15px 0;
    }
    .coming_name>span{
        font-size: 16px;
        display: block;
        padding: 0 0 15px 0;
    }
</style>