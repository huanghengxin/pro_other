<template>
    <div>
    </div>
</template>
<script>
export default {
    mounted(){
        let id = this.$route.params.id;
        this.$router.push('/list/'+id)
    }
}
</script>