<template>
    <div>
        <van-nav-bar
        title="商品详情"
        left-arrow
        @click-left="onLeft"
        >
        <template #right >
            <van-icon name="bag-o" size="18" @click="onRight"/>
        </template>
        </van-nav-bar>
        <!-- 商品详情 -->
        <div class="details-a">
            <img :src="noo.nimg" alt="">
            <p style="">{{noo.nme}}</p>
            <p>{{noo.nname}}</p>
            <p style="">¥{{noo.nprice}}</p>
            <p>市场价{{noo.npricea}}</p>
        </div>
        <div class="details-b">
            <van-cell @click="onshow" is-link>服务 七天无理由退货 品质保障</van-cell>
              <van-popup v-model="show"  position="bottom" :style="{ height: '20%' }">
                  <h3>服务</h3>
                  <p style="margin:10px 5px">七天无理由退换货</p>
                  <p style="margin:10px 5px">满住相应条件(鞋底污责/磨损不支持)时,消费者可申请"7天无理由退换货"</p>
              </van-popup>
        </div>
        <van-button plain type="primary" @click="add">加入购物车</van-button>
        <van-button plain type="primary">立即购买</van-button>
    </div>
</template>
<style>
.details-a>img {
    width: 100%;
    height: 100%;
}
.details-a p {
    margin:5px 15px;
}
.details-b {
    border-top: 3px solid lightgray;
    border-bottom: 3px solid lightgray;
}
</style>
<script>
export default {
    data(){
        return{
           noo:{},
           show:false
        }
    },
    mounted(){
        //获取url片段 
        let id=this.$route.params.id;
        //console.log(id);
        //多表连接的查询
        this.axios.get('/nood?id='+id).then(res=>{
            res.data.result.nimg=require('../assets/'+res.data.result.nimg);
            //this.noo.push(res.data.result.nimg)
            this.noo=res.data.result;
        })
    },
    methods:{
        onLeft:function(){
          this.$router.replace('/cathet')
        },
        onRight:function(){
            this.$router.replace('/shopping')
        },
        onshow(){
            this.show = true;
        },
        add:function(){
            this.$store.commit('data_mutations',{
                id:this.noo.id,
                nname:this.noo.nname,
                nimg:this.noo.nimg,
                nprice:this.noo.nprice,
                npricea:this.noo.npricea,
                counts:this.noo.counts,
            })
        }
    }
}
</script>
