<template>
    <div class="page">
        <van-nav-bar title="购物车" left-arrow
        @click-left="On()"></van-nav-bar>
        <!-- 没有商品的时候-->
        <van-empty
            class="custom-image"
            image="https://img.yzcdn.cn/vant/custom-empty-image.png"
            description="去逛逛"
            v-if="this.$store.state.data.length==0"
        />
        <!-- 添加购物车 -->
        <div class="card" v-else v-for="(item,index) of data" :key="index">
            <div class="card-a">
                <input
                    type="checkbox"
                    v-model="checkboxList"
                    :value="item.id"
                    @click="getTotal(index,item.id)"
                />
                <img :src="item.nimg" alt />
                <p class="card-b">{{item.nname}}</p>
                <span  class="card-c">¥{{item.npricea}}</span> <span class="card-d">¥{{item.nprice}}</span>
                <!-- 数量加减 -->
                <div class="card-p">
                    <button @click="minus(index)" class="card-p-a">+</button>
                    <p class="card-p-c">{{item.counts}}</p>
                    <button @click="add(index)" class="card-p-b">-</button>
                </div>
                <van-button round type="danger" class="card-p-d" @click="onShan(index)">删除</van-button>
            </div>
        </div>
        <!-- 全选 -->
        <div class="footer">
                <input type="checkbox" @click="checkedAll" v-model="checked" />
                <span>全选</span>
                <span>合计:￥{{Money}}</span>
                <button>提交订单</button>
         </div>
    </div>
</template>
<style>
.page {
    background-color: #f2f2f2;
}
.card {
    width: 360px;
    margin: 5px auto;
     position: static;

}
.card-a img{
    width: 150px;
    height: 150px;
}
.card-a {
    position: relative;
    margin: 10px 0;
}
.card-b {
   position: absolute;
   top: 21%;
   left: 50%;
}
.card-a>span {
    margin-left: 10px;
}
.card-c {
    position: absolute;
    top: 50%;
    padding: 5px 0;
}
.card-d {
     position: absolute;
    top: 50%;
    padding: 5px 0;
    left: 70%;
}
.card-c {
    text-decoration: line-through;
}
.card-d {
    color:#ff9999;
}
.card-p {
    position: absolute;
    left: 63%;
    top: 77%;
}
.card-p-a {
    position: absolute;
    top: -13%;
    left: -318%;
}
.card-p-b {
    position: absolute;
    top: -13%;
    left: 167%;
}
.card-p button {
    width: 25px;
    height: 28px;
}
.card-p-d {
    position: absolute;
    left: 40%;
     margin-top: 10px;
}
.footer {
  width: 360px;
  height: 50px;
  position: fixed;
  bottom: 55px;
  text-align: center;
}
.footer span {
  color: #666;
  display: inline-block;
  margin-right: 55px;
}
.footer button {
  background-color: red;
  color: #fff;
  outline: none;
  border: none;
  width: 80px;
  height: 30px;
  float: right;
}
</style>
<script>
import { mapState } from "vuex";
export default {
    data(){
        return{
            active: 1,
            checked: false,
            checkboxList: [],
            //商品总价
            Money:0,
            //选中的商品
            chooseShop: []
        }
    },
    computed:{
        ...mapState(["data"])
    },
    methods:{
        //全选
        checkedAll(){
            if (this.checked) {
                //实现反选
                this.checkboxList = [];
            } else {
                //实现全选
                this.checkboxList = [];
                this.$store.state.data.forEach(item => {
                this.checkboxList.push(item.id);
                });
            }
            },
            //返回跳转
        On:function(){
             this.$router.replace('/cathet')
        },
        //index 选中的索引
        //id:商品的id
        getTotal(index,id) {
            //console.log("ddd" + index);
            //  添加都购物车的商品列表信息  在 vuex 中读取
            let shopData = this.$store.state.data;
            //console.log(shopData);
            if (this.checkboxList.includes(id)) {
                // 已经有了该商品，选择取消该商品
                this.chooseShop.splice(index, 1);
            } else {
                // 没有包含，需要进行购买
                // chooseItem 当前选中的 商品
                let chooseItem = shopData.filter(val => {
                if (val.id == id) {
                    return val;
                }
                });
                this.chooseShop.push(chooseItem[0]);
            }
            this.getSum("add");
            console.log(this.chooseShop);
            // 获得选中的数据
            },
        //计算商品总和
        getSum(state) {
            /*var a = this.checkedList.some((arr) => {
                return arr == item.counts;
            });
            if (a) {
                this.Money += item.nprice;
            } else {
                this.Money -= item.nprice;
            } */
            var money=0;
             for (const item of this.chooseShop) {
                if (state == "add" && item != null) {
                money += item.nprice * item.counts;
                } else if (state == "minus" && item != null) {
                money -= item.mprice * item.counts;
                }
            }
            this.Money = Math.abs(money); 
            },
        //加减
        add(index){  //,id
            // //console.log("add" + index);
            // this.checkboxList.push(id);
            // this.$store.state.data[index].counts++;
            // this.chooseShop[index] = this.$store.state.data[index];
            // //console.log(this.chooseShop);
            // this.getSum("add");
             
             if(this.$store.state.data[index].counts > 1){
                this.$store.state.data[index].counts --;
            }
        },
        minus(index){
            /* //console.log("minus" + index);
            this.checkboxList.push(id);
            if (this.$store.state.data[index].counts > 1) {
            this.$store.state.data[index].counts--;
            }
            this.chooseShop[index] = this.$store.state.data[index];
            this.getSum("minus"); */
            if(this.$store.state.data[index].counts < 29){
               this.$store.state.data[index].counts ++;
            }
        },
        //删除按钮
        onShan(id){
           alert("确认删除该商品");
           this.$store.state.data.splice(id,1)
        }
      },
    watch:{
        checkboxList:{
            handler: function() {
                if (this.checkboxList.length === this.$store.state.data.length) {
                this.checked = true;
                } else {
                this.checked = false;
                }
            }
        }
    }
}
</script>