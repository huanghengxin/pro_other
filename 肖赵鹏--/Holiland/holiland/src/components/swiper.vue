<template>
    <p>
        <mt-swipe :auto="3000">
            <mt-swipe-item v-for="(e,i) of lunbo" :key="i">
                <img :src=e.img alt="">
            </mt-swipe-item>
        </mt-swipe>
    </p>
</template>

<script>
 import {Swipe, SwipeItem} from 'mint-ui'
 import 'mint-ui/lib/style.css'
 export default {
    components: {
    'mt-swipe': Swipe,
    'mt-swipe-item': SwipeItem
    },
    data () {
        return {
            lunbo:""
        }
    },
    mounted(){
        this.axios.get('/lunbo').then((res)=>{
            this.lunbo = res.data
            // console.log(this.lunbo)
        })
    }
 }

</script>
<style scoped>

    img {
        width: 100%;
        height: 100%;
    }
    .mint-swipe {
        height: 195px;
    }

</style>