<template>
    <div class="container">
        <my-back></my-back>
        <div class="centainer">
            <div v-for="(e,i) of list" :key="i" class="list_div">
                <div>
                    <router-link :to="'/details/'+e.id" class="a_style">
                        <img :src=e.img alt="" class="img_style">
                        <p class="name_style">{{e.name}}</p>
                        <p class="price_style">
                            ￥{{e.price.toFixed(2)}}
                            <img class="img_add" src="http://m.holiland.com/mobile/script/images/tjia-101.png">
                        </p>
                    </router-link>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import { Toast } from "mint-ui";
export default {
    data(){
        return{
            key:'',
            list:''
        }
    },
    mounted(){
        this.key = this.$route.params.key;
        this.axios.get('/search?key='+this.key).then((res)=>{
            this.list=res.data
            if(this.list.length==0){
                this.$router.back(-1)
                Toast({
                    message:'没有找到 '+this.key+' 的商品',
                    duration:2000
                })
            }
        })
    }
}
</script>
<style scoped>
    .centainer{
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 90px;
        box-sizing: border-box;
    }
    .img_add{
        float: right;
        width: 13.5%;
    }
    .list_div{
        width: 46%;
        margin: 2%;
    }
    .list_div>div{
        border: 1px solid #EAEAEA;
    }
    .img_style{
        width: 100%;
    }
    .list_div p{
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        margin: 0;
        padding: 5px;
        font-size: 14px;
    }
    .name_style{
        color: #626262;
    }
    .price_style{
        color:#2093cc;
        font-family: "Helvetica Neue",Helvetica,STHeiTi,sans-serif;
    }
    .a_style{
        text-decoration: none;
    }
</style>