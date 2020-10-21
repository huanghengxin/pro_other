<template>
    <div class="find">
        <p>Find Us in Store</p>
        <img :src="img" alt="">
    </div>
</template>
<script>
export default {
    data(){
        return{
            img:'https://cdn.goodq.top/caches/d3cb5b1e8d2f874dfc5debc4da94322b/aHR0cDovL3d3dy5vY2VhbmIuY29tLmF1L3FmeS1jb250ZW50L3VwbG9hZHMvMjAxOS8wNi83YjMwNmNiNjJiZmQ1MTE1NmU2YzIzMWZkYjJiOGUzNi5qcGc_p_p100_p_3D.jpg'
        }
    }
}
</script>
<style scoped>
    .find{
        background-color: #1C1C1C;
        text-align: center;
    }
    .find>p{
        color: #fac51c;
        font-size: 18px;
        line-height: 24px;
        font-family: "Raleway",Helvetica,Arial,Verdana,sans-serif;
        font-weight: 400;
        padding: 20px 0;
        margin: 0;
    }
</style>