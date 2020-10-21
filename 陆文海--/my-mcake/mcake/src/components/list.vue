<template>
        <div>
              <div class="prent">
        <div>
          <img src="../assets/img/header/knifeFork.png" alt="">
        </div>
        <div class="title">
             <h2 class="font"><span>本季推荐</span></h2>  
             
            <p>Seasonal Recommend</p> 
        </div>
            <h4 class="new">Seasonal</h4>
           
    </div>
    <!-- 商品详情 -->
        <div class="commodnity">
            
            <div class="commodnityChild" v-for="(value,index) of count" :key="index">
                <h3>{{value.tite}}</h3>
                <p>{{value.ttle}}</p>
                <router-link to="/details">
                <img :src="value.src" alt="">
                 </router-link>
                <span>¥{{value.price.toFixed(2)}}</span>
                <img src="../assets/img/header/car1.png" alt="" class="commodnityImg" style="width:32px;height:32px;">
            </div>
           
        </div>
    </div>    
</template>
<script>
export default {
    data(){
        return{
            // 声明变量count保存服务器拿到的数据
            count:[],
            imge:[]
        }
    },
    mounted(){
        this.axios.get('/list').then(res=>{
            let data=res.data.result;
            // console.log(data)
            this.count=res.data.result;
            console.log(this.count)
            let item = res.data.result;
            // console.log(item)
            item.forEach(ima=>{
                if(ima.src !=null){
                    ima.src = require('../assets/img/header/'+ima.src);
                }
                this.imge.push(ima);
                console.log(this.imge)
            })                
        });
        // this.axios.get('/img').then(res=>{

        // })
    }
}
</script>
<style scoped>
/* 商品样式布局 */
.commodnityChild{
    position: relative;
    cursor:pointer;
    margin-bottom: 3rem;
}
.commodnityChild h3{
    position: absolute;
    top:24px;
    left: 1.5rem;
    font-size: 15px;
    font-weight: lighter;
    margin-bottom: 8px;
    color: #000;
}
.commodnityChild p{
    position: absolute;
    top:50px;
    left: 1.5rem;
    font-weight: normal;
    font-size: 12px;
    color: #7a7a7a;
}
.commodnityChild span{
    position: absolute;
    top:330px;
    left: 1.5rem;
    font-weight: 500;
    font-size: 18px;
    color: #000;
}
.commodnityImg{
    position: absolute;
    top:330px;
    right: 4rem;
    width: 2px;
    height: 2px;

}
/* 商品dv */
    .commodnity{
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        width: 1400px;
        /* height: 968px; */
       
        margin: 0 auto;
        box-sizing: border-box;

    }
     .commodnity div{
        width: 414px;
        height: 425px;
        background-color:#f5f5f5;
        flex: 0 0 30%;
        /* margin-bottom: 2rem; */
        
    }
    .commodnity div>img{
        width: 381px;
        height: 390px;
    }
   
/* 本季推荐div */
    .prent{
        position: relative;
        width: 100%;
        height: 200px;
    }
    .prent img{
        position: absolute;
        top: 0;
        left: 70px;
    }
    .title{
        position: absolute;
        top: 100px;
        left: 150px;
    }
    .new{
        position: absolute;
        top: 100px;
        left: 50%;
         color: #c3c3c3;
    }
    .title p{
    line-height: 0px;
    color: #c3c3c3;
    font-size: 12px;
    margin-top: 13px;
    }
</style>