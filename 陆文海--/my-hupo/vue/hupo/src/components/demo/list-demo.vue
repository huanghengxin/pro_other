<template>
     <div class="list">
       <div>
            <van-cell-group>
                <van-cell title="家用电器"  value="查看更多"  size="large" is-link to="search"/>
            </van-cell-group>
           <div >
               <div v-for="(value,index) of hint" :key="index">
                   <van-cell-group>
                        <van-cell :title="value.title"  value="查看更多"  size="large" is-link to="search"/>
                    </van-cell-group>
                    <div class="home"  >
                        <div v-for="(item,index) of commdity" :key="index">
                            <router-link  :to="`/details/${item.kid}`">
                                <img :src="item.img">
                                <p>{{item.tite}}</p>
                            </router-link> 
                            <div class="grid">
                                <span>¥ {{item.price.toFixed(2)}}</span>
                                <span>包邮</span> 
                            </div>
                        </div>
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
            commdity:[],
            hint:[
                {title:'家电',look:'查看更多'},
                {title:'家具',look:'查看更多'},
                {title:'数码',look:'查看更多'},
                {title:'电脑',look:'查看更多'}
            ]
           
        }
    },
    mounted(){
        this.axios.get('/list').then(res=>{
            this.commdity=res.data.result
            console.log(this.commdity)

        })
    }
}
</script>

<style scoped>
.home{
    display: grid;
    grid-template-columns:48% 48%;
    justify-content: space-around;
    grid-gap: 5px;
}
</style>