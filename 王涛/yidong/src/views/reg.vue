<template>
    <div>
        <van-nav-bar
            title="注册"
            left-arrow
            @click-left="onLeft"
            />
            <!-- 注册页面 -->
         <van-field
        v-model="user"
        placeholder="请输入用户名"
        :right-icon="unameicon"
        @blur.native.capture="uname"
      />
      <van-field
        v-model="paww"
        type="password"
        placeholder="请输入密码"
        :right-icon="upwdicon"
        @blur.native.capture="upwd"
      />
      <van-field
        v-model="cpss"
        type="password"
        placeholder="请再次输入密码"
        :right-icon="cpwdicon"
        @blur.native.capture="cpwd"
      />
      <van-button round block type="info" @click="reg()">注册</van-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
         user:"",
         paww:"",
         cpss:"",
         unameicon:"",
         upwdicon:"",
         cpwdicon:""
        }
    },
    methods:{
       onLeft(){
           this.$router.push("/login");
       },
       uname(){
           var unamereg = /^\w{6,12}$/;
           var ubool = unamereg.test(this.user);
           if(ubool==true){
               this.unameicon = "success";
            // this.axios.post("/test", "uname=" + this.username).then(res => {
            //   if (res.data.code == 0) {
            //     this.$dialog.alert({ message: "用户名已存在" });
            //   }
            // });
             return true;
           }else{
               this.unameicon = "warn-o";
               return false;
           }
       },
       upwd(){
           var upwdreg = /^\w{6,12}$/;
           var upwdbool = upwdreg.test(this.paww);
           if(upwdbool == true){
               this.upwdicon = "success";
               return true;
           }else{
               this.upwdicon = "warn-o";
               return false;
           }
       },
       cpwd(){
          if(this.cpss == this.paww && this.cpss != ""){
              this.cpwdicon = "success";
              return true;
          }else{
              this.cpwdicon = "warn-o";
              return false;
          }
       },
       reg(){
         if(this.uname() && this.upwd() && this.cpwd()){
             this.axios.post("/reg","uname=" + this.user + "&upwd=" + this.paww).then(res => {
                 if(res.data.code == 1){
                     //console.log("注册成功");
                     this.$dialog.alert({messagee:"注册成功"});
                     this.$router.push("/login");
                 }
             });
         }
       }
    }
}
</script>