<template>
    <div>
        <!--导航栏  -->
        <van-nav-bar
        title="分类"
        left-arrow
        @click-left="fanhui()"
        />
        <!-- 标签页 -->
        <van-tabs v-model="active" tpye="line">
            <van-tab title="nike">
                <div class="bp">
                <div>
                    <h3>运动鞋</h3>
                    <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <img src="../assets/xz/1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/2.jpg" />
                            <p>篮球鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/3.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/4.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
                <div>
                    <h3>运动服</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-2.jpg" />
                            <p>篮球鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-3.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
                <div>
                    <h3>运动包</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        
                    </van-grid>
                </div>
                <div>
                    <h3>运动配件</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                       
                    </van-grid>
                </div>
                <div>
                    <h3>儿童运动鞋</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>复刻鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
              </div>
            </van-tab>
            <van-tab title="adidas">
                 <div class="bp">
                <div>
                    <h3>运动鞋</h3>
                    <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <img src="../assets/xz/1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/2.jpg" />
                            <p>篮球鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/3.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <img src="../assets/xz/4.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
                <div>
                    <h3>运动服</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-2.jpg" />
                            <p>篮球鞋</p>
                        </van-grid-item>
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-3.jpg" />
                            <p>板鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
                <div>
                    <h3>运动包</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                        
                    </van-grid>
                </div>
                <div>
                    <h3>运动配件</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>跑步鞋</p>
                        </van-grid-item>
                       
                    </van-grid>
                </div>
                <div>
                    <h3>儿童运动鞋</h3>
                     <van-grid :border="false" :column-num="3">
                        <van-grid-item>
                            <van-image src="https://img.yzcdn.cn/vant/apple-1.jpg" />
                            <p>复刻鞋</p>
                        </van-grid-item>
                    </van-grid>
                </div>
              </div>
            </van-tab>
            <van-tab title="top">内容</van-tab>
            <van-tab title="tes">内容</van-tab>
            
        </van-tabs>
        
    </div>
</template>
<style scoped>
.bp{
    height: 1300px;
}
.bp>div{
    border-bottom: 3px solid gray;
}
.bp img{
    height: 120px;
    width: 100px;
}
</style>
<script>
export default {
    data(){
        return{
            active:0
        }
    },
    methods:{
        fanhui:function(){
             this.$router.replace('/shop')
        }
    }
}
</script>