<template>
<div class="cathed">
        <van-nav-bar
            title="分类"
            left-text="返回"
            left-arrow
            @click-left="goback()"
        />
        <!-- 侧边标签栏 -->
        <van-sidebar v-model="active">
            <van-sidebar-item title="nike" >

            </van-sidebar-item>
            <van-sidebar-item title="aiddas" />
            <van-sidebar-item title="top" >

            </van-sidebar-item>
            <van-sidebar-item title="tes" />
        </van-sidebar>
        
    <div class="bq">
        <!-- v-model索引 -->
        <div v-if="active ===0" >
           <div>
                <h3>运动鞋</h3>
                <van-grid :border="false" :column-num="3">
                 <van-grid-item v-for="(item,index) of noods" :key="index">
                     <router-link :to="`/details/${item.id}`">
                    <img :src="item.nimg" alt="">
                    <p>{{item.nme}}</p>
                    </router-link>
                 </van-grid-item>
                 <!-- <van-grid-item>
                    <img src="../assets/xz/2.jpg" alt="">
                    <p>篮球鞋</p>
                 </van-grid-item>
                 <van-grid-item>
                   <img src="../assets/xz/3.jpg" alt="">
                    <p>板鞋</p>
                 </van-grid-item> -->
                </van-grid>
            </div>
        </div>
        <div v-if="active ===1">
        <div>
                <h3>运动服</h3>
                    <van-grid :border="false" :column-num="3">
                    <van-grid-item>
                        <img src="../assets/yf/1.jpg" alt="">
                        <p>运动服</p>
                    </van-grid-item>
                    
                </van-grid>
            </div>
        </div>
        <div v-if="active ===2">
            <div>
                <h3>运动包</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <img src="../assets/bao/1.jpg" alt="">
                            <p>运动包</p>
                        </van-grid-item>
                        
                    </van-grid>
            </div>
        </div>
        <div v-if="active ===3">
            <div>
                <h3>儿童运动鞋</h3>
                <van-grid :border="false" :column-num="3">
                    <van-grid-item>
                        <img src="../assets/xz/1.jpg" alt="">
                        <p>复刻鞋</p>
                    </van-grid-item>
                </van-grid>
            </div>
        </div>
    </div>
</div>
</template>
<style scoped>
.bq{
    height: 100%;
}
.bq>div{
    border-bottom: 3px solid gray;
}
.bq img{
    height: 120px;
    width: 100px;
}
</style>
<script>
export default {
    data(){
        return {
            active:0,
            noods:[]
        }
    },
    methods:{
        goback:function(){
            this.$router.replace('/shop')
        }
    },
    mounted(){
        this.axios.get('/noods').then(res=>{
            let data = res.data.result;
            //console.log(data);
            data.forEach(item =>{
                item.nimg = require('../assets/' +item.nimg);
                this.noods.push(item)
            })
        })
    }
}
</script>