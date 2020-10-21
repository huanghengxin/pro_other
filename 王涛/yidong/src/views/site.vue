<template>
    <div>
        <van-nav-bar title="收货地址" left-arrow @click-left="onClickLeft">

        </van-nav-bar>
        <!-- 地址详情 -->
        <div>
            <van-address-list
                v-model="siteId"
                :list="list"
                default-tag-text="默认"
                @add="onAdd"
                @edit="onEdit"
            />
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
          siteId:"1",
          list:[{
              id:"1",
              name:"张三",
              tel:"158400000",
              address:"北京市五道口职业技术学院",
              isDefault: true
          },
          ]
        }
    },
    methods:{
        onClickLeft(){
            this.$router.push("/me");
        },
        onAdd(){
            this.$router.push("/sitelist")
        },
        onEdit(item,index){
            this.$router.push("/sitelist")
        }
    },
    mounted(){
        //console.log(this.$store.state.list.length);
        if(this.$store.state.list.length!=0){
            this.list[0].name=this.$store.state.list[0].name,
             this.list[0].tel=this.$store.state.list[0].tel,
            this.list[0].address=this.$store.state.list[0].address
        }
    }
}
</script>