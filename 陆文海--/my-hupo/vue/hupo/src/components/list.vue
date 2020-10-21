<template>
   <div class="list">
       <div>

            <van-cell-group>
                <van-cell title="家用电器"  value="查看更多"  size="large" is-link to="search"/>
            </van-cell-group>
           <div class="home" >
                <div v-for="(item,index) of commdity" :key="index">
                        <router-link  :to="`/details/${item.lid}`">
                            <img v-lazy="item.img"/>
                            <p>{{item.tite}}</p>
                        </router-link> 
                        <div class="grid">
                            <span>¥ {{item.price.toFixed(2)}}</span>
                            <span>包邮</span> 
                        </div>
                </div>
            </div>
       </div>
         <div>
            <van-cell-group>
                <van-cell title="手机/运营商/数码"  value="查看更多"  size="large" is-link to="search"/>
            </van-cell-group>
           <div class="home" >
                <div v-for="(itemt,index) of commdityTwo" :key="index">
                        <router-link :to="`/details/${itemt.lid}`">
                            <img v-lazy="itemt.img">
                            <p>{{itemt.tite}}</p>
                        </router-link> 
                        <div class="grid">
                            <span>¥ {{itemt.price.toFixed(2)}}</span>
                            <span>包邮</span> 
                        </div>
                </div>
            </div>
       </div>
         <div>
            <van-cell-group>
                <van-cell title="电脑办公"  value="查看更多"  size="large" is-link to="search"/>
            </van-cell-group>
           <div class="home" >
                <div v-for="(item,index) of commdityThree" :key="index">
                        <router-link :to="`/details/${item.lid}`">
                            <img v-lazy="item.img">
                            <p>{{item.tite}}</p>
                        </router-link> 
                        <div class="grid">
                            <span>¥ {{item.price.toFixed(2)}}</span>
                            <span>包邮</span> 
                        </div>
                </div>
            </div>
       </div>
         <div>
            <van-cell-group>
                <van-cell title="家电/家具/家装/厨具"  value="查看更多"  size="large" is-link to="search"/>
            </van-cell-group>
           <div class="home" >
                <div v-for="(item,index) of commdityFour" :key="index">
                        <router-link :to="`/details/${item.lid}`">
                            <img v-lazy="item.img">
                            <p>{{item.tite}}</p>
                        </router-link> 
                        <div class="grid">
                            <span>¥ {{item.price.toFixed(2)}}</span>
                            <span>包邮</span> 
                        </div>
                </div>
            </div>
       </div>
         <div>
            <van-cell-group>
                <van-cell title="艺术/礼品鲜花/农资"  value="查看更多"  size="large" is-link to="search" title-class="title-name"/>
            </van-cell-group>
           <div class="home" >
                <div v-for="(item,index) of commdityfive" :key="index">
                        <router-link :to="/details/+item.lid">
                            <img v-lazy="item.img">
                            <p>{{item.tite}}</p>
                        </router-link> 
                        <div class="grid">
                            <span>¥ {{item.price.toFixed(2)}}</span>
                            <span>包邮</span> 
                        </div>
                </div>
            </div>
       </div>
       <!-- 底部标签 -->
       <div class="list-bottom">
           <router-link to="/">登录</router-link>|
           <router-link to="/">免费注册</router-link>|
           <router-link to="/">电脑版</router-link>|
           <router-link to="/">会员中心</router-link>
       </div>
       <!-- 底部标签结束 -->
        <tabbar></tabbar>
    </div> 
</template>

<script>
import tabbar from '../components/tabbar'

export default {
    components:{
        tabbar
    },
    data(){
        return{
            commdity:[],
            commdityTwo:[],
            commdityThree:[],
            commdityFour:[],
            commdityfive:[]
           
        }
    },
    mounted(){
        this.axios.get('/list1').then(res=>{
            this.commdity=res.data.result;
            // console.log(this.commdity)
        });
        this.axios.get('/list2').then(res=>{
            this.commdityTwo=res.data.result
        });
        this.axios.get('/list3').then(res=>{
            this.commdityThree=res.data.result
        });
        this.axios.get('/list4').then(res=>{
            this.commdityFour=res.data.result
            // console.log(this.commdityFour)
        });
          this.axios.get('/list5').then(res=>{
            this.commdityfive=res.data.result
            // console.log(this.commdityfive)
        });
    }
}
</script>

<style scoped>
*{
    padding: 0;
    margin: 0;
}
.list a{
    color: #333;
}
.home{
    display: grid;
    grid-template-columns:48% 48%;
    justify-content: space-around;
    grid-gap: 5px;
}
.home img{
    width: 181px;
}
.home p{
  font-size: 14px;
  overflow: hidden;
    height: 40px;
}
.grid{
    display: grid;
    grid-template-columns:repeat(2,1fr);
    color: #f00;
    align-items: center;
}
.grid span:last-child{
    font-size: 13px;
    border: 1px solid #f00;
    color: #f00;
    width: 28px;
    border-radius: 2px;
    font-style: normal;
}
.van-cell--large .van-cell__title {
    font-size: 15px;
}
.van-cell {
font-size: 12px;
}
.list-bottom{
     margin: 10px 0;
     background-color: #eee;
     border-bottom: solid 0.05rem #EEE;
     display: block;
     text-align: center;
     height: 40px;
     line-height: 40px;
}
.list-bottom a{
    font-size: 13px;
    color: #333;
    padding: 0 8px;
   
}
</style>