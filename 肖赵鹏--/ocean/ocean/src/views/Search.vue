<template>
    <div class="bg">
        <div v-show="!show" class="not">
            对不起,没有找到 <span>{{id}}</span> 该商品
        </div>
        <table></table>
        <div v-show="show" class="sec">
            <div v-for="(e,i) of lists" :key="i">
                <div @click="to(i)" class="d-f">
                    <img :src="e.src" alt="" class="sec_img">
                    <span>{{e.name}}</span>
                    <img src="../assets/go.png" alt="" class="img">
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
    .bg{
        background: #222;
        padding-bottom: 100px;
    }
    .not{
        text-align: center;
        line-height: 500px;
        font-size: 20px;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
        color: #efc17c;
    }
    .not>span{
        color: red;
    }
    .sec{
        width: 50%;
        margin: 50px auto;
        /* background-color: chartreuse; */
        text-align: center;
        /* background: #222; */
        cursor: pointer;
    }
    .d-f{
        display: flex;
        margin: 50px 0;
    }
    .sec_img{
        width: 13%;
        height: 20%;
        border-radius: 5px;
    }
    .sec span{
        margin: 3.5%;
        color: #efc17c;
        font-weight: 200;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif, Geneva, Verdana, sans-serif;
    }
    .img{
        float: right;
        margin: 3.5%;
        height: 50%;
    }
</style>
<script>
export default {
    data(){
        return{
            id:'',//接收url地址栏传参
            show:false,//控制主页显示区域
            lists:[],//接收返回的数据
        }
    },
    methods:{
        to(i){
            this.$router.push('/details/'+this.lists[i].id)
        }
    },
    mounted(){
        this.id= this.$route.params.id;
        this.axios.get('/search',{
            params:{
                id:this.id
            }
        }).then((res)=>{
            this.lists=res.data
            console.log(this.lists)
            if(this.lists.length>0){
                this.show=true
            }else{
                this.show=false;
            }
        })
    }
}
</script>