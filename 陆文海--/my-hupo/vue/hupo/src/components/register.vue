<template>
    <div>
        <div class="parent-login">
            <div class="parent-login-img">
                <span @click="skip()"><img src="http://tianhehupo.com/template/wap/default_new/public/images/home_check.png" alt=""></span>
                <img src="http://tianhehupo.com/upload/image_collection/1522752598.png" alt="" style="width:100%;">
            </div>
        </div>
    </div>
</template>

<script>
export default {
   
    methods:{
        skip(){
          this.$router.push({path:'/'}) 
        },
    }
}
</script>

<style scoped>
.parent-login-img span{
    position: absolute;
    z-index: 80;
    width: 30px;
    height: 25px;
    background: #fff;
    top: 15px;
    padding-right: 8px;
    border-top-right-radius: 18px;
    border-bottom-right-radius: 18px;
    text-align: center;  
}
.parent-login-img span img{
    height: 20px;
    display: block;
    margin: 2px 0 0 8px;
}
</style>