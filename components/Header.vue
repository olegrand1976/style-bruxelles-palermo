<template>
  <header>
    <nav class="flex justify-between items-center bg-white px-20 py-3 fixed w-full top-0 z-20 shadow-xl">
      <img src="/images/logo-nav.svg" alt="Stylé">
      <ul class="flex list-none gap-8 items-center m-0 p-0">
        <li><NuxtLink to="/" class="nav-link">{{ $t('accueil.title') }}</NuxtLink></li>
        <li><NuxtLink to="/services" class="nav-link">{{ $t('services.title')}}</NuxtLink></li>
        <li><NuxtLink to="/contact" class="nav-link">{{ $t('contact.title')}}</NuxtLink></li>
        <li><a href="https://client.optios.net/online_booking.html?/7827" target="_blank" rel="noopener" class="border px-8 py-3 bg-[#E09550] text-white rounded-full hover:bg-white hover:text-[#E09550] transition easy 5s">Rendez-vous en ligne</a></li>
        <li>
          <LanguageToggle />
        </li>
      </ul>
    </nav>
  </header>
</template>
  
<script setup lang="ts">
  import { defineComponent } from 'vue'
  import LanguageToggle from '@/components/LanguageToggle.vue'
</script>
  
<style scoped>
/* style lien navbar */
.nav-link {
  position: relative;
  padding-bottom: 10px;
}
.nav-link.router-link-exact-active{
  color: #E09550;
}
.nav-link.router-link-exact-active::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  width: 75%;
  border-bottom: 5px solid #E09550;
  border-radius: 20px;
}
</style>
  