<template>
    <div></div>
</template>
<script>
export default {
    data(){
        return{
            id:''
        }
    },
    mounted(){
        this.id= this.$route.params.id;
        this.$router.push('/search/'+this.id)
    }
}
</script>