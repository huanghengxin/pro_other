<template>
    <div>
        <!-- <my-back></my-back> -->
        <div class="head"></div>
        <div @click="sort" class="paixu">价格排序</div>
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
export default {
    data(){
        return{
            list:[],
            id:null
        }
    },
    methods:{
        sort(){
            return this.sortKey(this.list,"price")
        },
        sortKey(array,key){
                return array.sort(function(a,b){
                     var x = a[key];
                     var y = b[key];
                     return ((x<y)?-1:(x>y)?1:0)
                 })
             }
    },
    watch:{
        //监听id
        id(newVal,oldVal){
            // console.log(oldVal,newVal);
        },
        //监听路由传参
         "$route.path":function(newVal,oldVal){
            //  console.log(newVal,oldVal)
             this.list = []
             this.id = this.$route.params.id;
             this.axios.get("/list?id=" + this.id).then(res=>{
                this.list=res.data;
            })
        }
    },
    mounted(){
        //获取传过来的ID
        //this.$route.params.参数名称
        this.id = this.$route.params.id;
        //发送带有ID参数的请求
            this.axios.get("/list?id=" + this.id).then(res=>{
                this.list=res.data;
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
        margin-top: 40px;
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
    .paixu{
        position: fixed;
        right: 8px;
        top: 14px;
        z-index: 10;
        font-size: 14px; 
    }
    .head{
        height: 40px;
        width: 100%;
        background: #fff;
        position: fixed;
        top: 0;
    }
</style>