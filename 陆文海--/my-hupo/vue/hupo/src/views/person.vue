<template>
    <div name="person">
        <!-- 顶部个人栏 -->
        <div class="person-top">
            <div class="prsrson-top-title">
                <router-link to="/">
                    <img src="http://tianhehupo.com/upload/web_common/419b57e5802bd1f3b8fdedb81fdb5fce_360_360.png" style="width:60px; border:3px solid #fff; border-radius: 50%;">
                </router-link>
                <span class="prsrson-top-span">账户管理&gt;</span>
                    <!-- 个人信息 -->
                <div class="person-top-title">
                    <p>
                        <span>余额</span>
                        <span>{{this.$store.state.username}}</span>
                        <span>积分</span>
                    </p>
                    <p>
                        <span>0</span>
                        <span class="member">普通会员</span>
                        <span>0</span>
                    </p>
                </div>
            </div>
            <p>
                <img src="http://tianhehupo.com/template/wap/default_new/public/images/member_foot.png" width="100%;">
            </p>
            <div class="preson-bottom">
                <span>普通订单</span>
                <span>查看全部订单&gt;</span>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    
}
</script>

<style scoped>
*{
    padding: 0;
    margin: 0;
}
.prsrson-top-title{
    height: 155px;
    background: #FF4E00;
}
.prsrson-top-title a{
    position: relative;
    top: 20px;
    left: 40%;
    
}
.prsrson-top-span{
    float: right;
    position: relative;
    top: 20px;
    right: 20px;
    color: #ffffff;
    font-size: 14px;

}
.person-top-title p{
    display: flex;
    justify-content: space-around;
    font-size: 14px;
    color: #ffffff;
    margin-top: 20px;
}
.person-top-title p:last-child{
    margin: 5px;
    color: yellow;
    font-weight: 700;
    font-size: 16px;
}
.member{
    font-size: 12px;
    font-weight: 500;
    border: 1px solid yellow;
    display: inline-block;
    border-radius: 3px;
    padding: 0 4px;

}
.preson-bottom{
    display: flex;
    justify-content: space-between;
    padding: 0 10px 10px 10px;
    font-size: 13px;
    border-bottom: 1px solid #e8e8e8;
    letter-spacing: 1px;
}
.preson-bottom span:last-child{
    color: #999;
}
</style>