<template>
  <div id="app">
    <div class="lay-total" v-if="flag">
      <Header/>
      <div v-if="msg_flag">
        <router-view></router-view>
      </div>
      <div v-else>
        <Content/>
        <Footer/>
      </div>
    </div>
    <div class="lay-total" v-else>
      <router-view></router-view>
    </div>
    <div>
      <a-back-top />
    </div>
    <!--<Header v-show="headershow" :class="{'hidden': !headershow}"></Header>-->
    <!--<Content v-show="contentshow" :class="{'hidden': !contentshow}"></Content>-->
    <!--<Footer v-show="footershow" :class="{'hidden': !footershow}"></Footer>-->
    <!--<router-view></router-view>-->
  </div>
</template>

<script>
import Header from './components/common/Header.vue';
import Content from './components/common/Content.vue';
import Footer from './components/common/Footer.vue';
// const flag = localStorage.getItem('flag');
const flag = localStorage.getItem('token');
const msg_flag = false;
localStorage.setItem('pageState',false);
export default {
  name: 'app',
  components: {
      Header, Content, Footer,
  },
  watch: {
      $route: function () { // 路由监听
          this.$nextTick(function () {
              const name = this.$route.name;
              if (name === 'Login' || name === 'Register'){
                  this.flag = '';
              } else{
                  this.msg_flag = false;
                  if (name === 'PushMsg' || name === 'MsgInfo') {
                      this.msg_flag = true;
                  }
                  this.flag = true;
              }
          })
      },
  },
  data (){
    return {
        flag,
        msg_flag
    }
  },
}
</script>
<style>
  .lay-total{
    height: 100%;
    width: 100%;
  }
</style>
