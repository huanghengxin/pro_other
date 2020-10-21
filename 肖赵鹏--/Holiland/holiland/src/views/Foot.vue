<template>
    <div>
        <my-header></my-header>
        <div v-for="(e,i) of img" :key="i">
            <img :src=e.img alt="" class="img-style">
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            img:''
        }
    },
    mounted(){
        let id = this.$route.params.id
        this.axios.get('/foot?id=' + id).then((res)=>{
            this.img = res.data
        })
    }
}
</script>
<style scoped>
    .img-style{
        width: 100%;
        margin-bottom: 50px;
    }
</style>