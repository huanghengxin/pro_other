<template>
    <div class="prent">
        <div class="back">
            <!-- <img src="../assets/img/header/back.jpg" alt=""> -->
        </div>
        <!-- 大的详情页父元素 -->
        <div class="details">
            <!-- 左边 -->
            <div class="details-left">
                <!-- 商品详情 -->
                <div class="details-left-top">
                    <div class="top-t">
                        <h2>爱之风物诗<span class="top-t-b">商品评价</span></h2>
                         
                    </div>
                    <div class="top-d">
                        <p>Poème d'amour</p>
                        <p>提前5小时预订</p>
                        <span class="top-t-b">慕斯</span>
                        <span class="top-t-b">巧克力</span>
                        <span class="top-t-b">水果</span>
                    </div>
                    <div class="top-footer">
                        <p>
                            <span>口味基地</span>
                            <span >Mousse</span>
                        </p>
                        <p>
                            <span>口感</span>
                            <span>入口即化</span>
                        </p>
                        <p>
                            <span >口味</span> 
                            <span>水果/巧克力</span>
                        </p>
                        <p>
                            <span>甜味</span> 
                            <span>
                                <img src="../assets/img/header/dot01.png" alt="">    
                                <img src="../assets/img/header/dot01.png" alt="">    
                                <img src="../assets/img/header/dot02.png" alt="">    
                                <img src="../assets/img/header/dot02.png" alt="">    
                                <img src="../assets/img/header/dot02.png" alt="">    
                            </span>
                        </p>
                        <!-- 底部餐具信息 -->
                        <div class="top-t">
                            <p>标准餐具(免费)5分</p>
                            <p>SIZE:心形,高度8cm</p>
                        </div>
                        <!-- 底部温馨提示 -->
                        <p style="color:red;"><i>!</i>温馨提示：鲜花为装饰品，请勿食用。本产品含有酒精成分，食用后请勿开车
                        <br>
                        若不及时食用，请放置0-10℃冷藏
                        </p>
                    </div>
                </div>
                <!-- 左下 -->
                <div class="detais-left-bottom">
                    <p>1磅(454g)</p>
                    <p>适合2-3人食</p>
                </div>
            </div>
            <!-- 右边详情页 -->
            <div class="details-right">
                <!-- 右上 -->
                <div class="details-right-top">
                    <div class="huan">
                        <p>
                            <span>换购&nbsp;</span><a href="javascript:;">| 买蛋糕可至购物车参加优惠换购</a>
                        </p>
                    </div>
                    <div class="lijian">
                        <p>
                            <span>立减 </span> 
                            <a href="#">| 参与“七夕活动”享立减20元优惠 
                            <i>详情 ></i></a>
                        </p>
                        
                    </div>
                    <div class="zeng">
                        <p>
                            <span>赠品</span><a href="#">| 参与“七夕活动”享立减20元优惠
                                <i>详情 ></i></a>
                        </p>
                    </div>
                </div>
                <!-- 右下 -->
                <div class="details-right-bottom">
                    <p style="font-size:28px;">¥218.00</p>
                    <button style="border:1px solid #e8e8e8;">加入购物车</button>
                    <button>立即订阅</button>
                </div>
            </div>
        </div>
        <!-- 详情图片 -->
        <div class="details-img">
            <p>
                <img src="https://static.mcake.com/desc/aizhifengwushi/pc.jpg" alt="">
            </p>
        </div>
        <div class="accessories">
            <h2>选个配件</h2>
        </div>
        <!-- 配件超市 -->
        <div class="accessories">
            <div class="acc-img">
                <img src="https://static.mcake.com/new_goods/xuancaiquweilibao/R2206/list/1.jpg" alt="">
                <p>炫彩趣味礼包</p>
                <p class="price">¥39.90
                    <span >
                    <img src="../assets/img/header/car1.png" alt="" style="height:32px; width:32px;">
                    </span>
                </p>
            </div>
               <div class="acc-img">
                <img src="https://static.mcake.com/new_goods/binfenhuanlelibao/R1337/list/1.jpg" alt="">
                <p>炫彩趣味礼包</p>
                <p class="price">¥39.90
                    <span >
                    <img src="../assets/img/header/car1.png" alt="" style="height:32px; width:32px;">
                    </span>
                </p>
            </div>
               <div class="acc-img">
                <img src="https://static.mcake.com/new_goods/HappyBirthday/PJ0111/list/1.jpg" alt="">
                <p>炫彩趣味礼包</p>
                <p class="price">¥39.90
                    <span >
                    <img src="../assets/img/header/car1.png" alt="" style="height:32px; width:32px;">
                    </span>
                </p>
            </div>
               <div class="acc-img">
                <img src="https://static.mcake.com/new_goods/shuzilazhu/PJ0101/list/1.jpg" alt="">
                <p>炫彩趣味礼包</p>
                <p class="price">¥39.90
                    <span >
                    <img src="../assets/img/header/car1.png" alt="" style="height:32px; width:32px;">
                    </span>
                </p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
        data (){
            return{

            }
        },
        methods(){
            let arr=[
                {name:'爱之风物诗'},
                {title:'Poème d\'amour'},
                {hour:'提前5小时预订'},
                {}
            ]
        }
}
</script>
<style scoped>
/* 配件超市 */
.accessories{
    width: 1400px;
    margin: 0 auto;
    margin-top: 50px;
    display: flex;
    
}
.accessories h2{
    font-weight: 400;
}
.acc-img img{
    height: 152px;
    width: 152px;
    border: 1px solid #e8e8e8;
}
.acc-img{
    margin-left: 40px;
}

.price{
width: 152px;
}
.price img{
    margin-left: 50px;
    border: none;
}
/* 详情介绍 */
.details-img{
    margin: 0 auto;
    width: 1400px;
    margin-top: 84px;
}
.details-img p>img{
    width: 100%;
}
/* 右边 */
.details-right{
    width: 383px;
    margin-left: 50px;
}
.details-right-top span{
    display: inline-block;
    width: 62px;
    height: 19px;
    color: #e91820;
    border: 1px solid #e91820;
    border-radius: 20px;
    line-height: 20px;
    text-align: center;
    margin-right: 10px;
}
.details-right-top{
        /* overflow-y: auto; */
    margin-top: 36px;
    padding-top: 20px;
    padding-bottom: 20px;
    height: 280px;
    background: #fff;
    padding-top: 68px; 
}
.details-right-top a{
    color: #848484;
    font-size: 15px;
    text-decoration: none;
}
.details-right-top p{
    margin: 5px 0;
}
/* 右下 */
.details-right-bottom button{
    width: 152px;
    height: 42px;
    color: #000;
    font-size: 15px;
    border-radius: 20px;
    background-color: #fff;
    margin-top: 80px;
    border: none;
}
.details-right-bottom :last-child{
  background-color: #ffe32a;
  margin-left: 30px;
}
/* 底部人数 */
.detais-left-bottom{
    border-top: 1px solid #ccc;
    font-size: 16px;
}
.detais-left-bottom :first-child{
    margin-top: 20px;
}
/* 底部口味栏 */
.top-footer{
    font-size: 14px;
    margin: 20px 0;
    
}
.top-footer p>span{
  display: inline-block;
  width: 100px;
  margin: 3px 0;
}
.top-footer p:first-child{
    width: 200px;
}
.top-t{
    margin: 25px 0;
}
.top-t p{
    margin: 5px 0;
}

/* 标题信息/提前预订 */
.top-d p+p{
 margin: 20px 0;
}
.top-d :first-child{
 font-size: 14px;
}
/* 黄色按钮 */
.top-t-b{
    margin-left:9pt;
    display: inline-block;
    width: 78px;
    height: 24px;
    background-color: #ffe32a;
    font-size:13px;
    text-align: center;
    line-height: 24px;
    border-radius: 20px;
}
.top-t h2{
    margin-bottom: 8px;
    padding-top: 68px;
    font-size: 26px;
    font-weight: 400;
}
.details-left{
    position: relative;
    left: 100px;
    width: 780px;
    border-right: 1px solid #cccccc;
}
.details{
    width: 1400px;
    margin: 0 auto;
    /* border: 1px solid; */
    /* height: 600px; */
    margin-top: -180px;
    background-color: #ffffff;
    display: flex;
    justify-content: space-around;
}
.back {
    background: url("../assets/img/header/back.jpg");
    width: 100%;
    height: 923px;
}
.prent{
    background-color: #f8f8f8;
}
</style>