<template>
  <div>
    <Header />
    <!-- Optionnel : le Carousel peut être intégré ici ou dans la page d'accueil -->
    <Carousel v-if="isHomePage" />
    <PriceTarifs />
    <NuxtPage />
    <Footer />
  </div>
</template>
  
<script setup>
  import Header from '@/components/Header.vue'
  import Footer from '@/components/Footer.vue'
  import Carousel from '@/components/Carousel.vue'
  import PriceTarifs from '@/components/PriceTarifs.vue'
  import { useRoute } from 'vue-router'
  import { useI18n } from 'vue-i18n'

  const route = useRoute()
  const { locale } = useI18n()

  const isHomePage = computed(() => {
    return route.path === '/' || route.path === `/${locale.value}`
  })
</script>
  
<style>
/* Styles globaux ou liés au layout */
</style>
  