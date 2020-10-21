<template>
    <div>
       <van-nav-bar
        title="登陆"
        left-arrow
        right-text="注册"
        @click-right="zhuchu()"
        @click-left="$router.back()"
        />
        <!-- 登录界面 -->
        <van-cell-group>
        <van-field
            v-model="user"
            left-icon="smile-o"
            :right-icon="unameicon"
            placeholder="请输入账号"
            @blur.native.capture="uname"
        />
        <van-field
            v-model="paww"
            left-icon="music-o"
            :right-icon="upwdicon"
            placeholder="请输入密码"
             @blur.native.capture="upwd"
        />
        </van-cell-group>
        <van-button type="info"
        round
        block
        @click="login()"
        >登陆
        </van-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
           user:"",
           paww:"",
           unameicon:"",
           upwdicon:""
        }
    },
    methods:{
        zhuchu:function(){
            this.$router.replace('/reg')
        },
        uname(){
            var unamereg=/^\w{6,12}$/;
            var ubool=unamereg.test(this.user);
            if(ubool==true){
                this.unameicon="success";
                return true
            }else{
                this.unameicon="warn-o";
            }
        },
        upwd(){
           var upwdreg=/^\w{6,10}$/;
           var upwdbool=upwdreg.test(this.paww);
           if(upwdbool==true){
               this.upwdicon="success";
               return true
           }else{
               this.upwdicon="warn-o";
               return false
           }
        },
       login(){
           if(this.uname() && this.upwd()){
               this.axios.post('/login','uname='+this.user+'&upwd='+this.paww).then(res=>{
                   if(res.data.code==0){
                       console.log('登录失败')
                       this.$dialog.alert({
                           message:'用户登录失败'
                       });
                   }else{
                       
                       this.$router.push('/me');
                   }
               })
           }

       }
    }
}
</script>