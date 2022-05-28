import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import vuetify from './plugins/vuetify'
import i18n from './i18n'
import 'leaflet/dist/leaflet.css'

Vue.config.productionTip = false

new Vue({
  router,
  store,
  vuetify,
  i18n,
  render: (h) => h(App),
  created: function () {},
  mounted: function () {
    let queryLocale = router.currentRoute.query.lang
    let storedLocale
    try {
      storedLocale = localStorage.getItem('cinow-locale')
    } catch {
      storedLocale = null
    }
    if (queryLocale) {
      this.$store.dispatch('setLocale', queryLocale)
    } else if (storedLocale) {
      this.$store.dispatch('setLocale', storedLocale)
    } else {
      this.$store.dispatch('setLocale', 'en')
    }
  },
}).$mount('#app')
