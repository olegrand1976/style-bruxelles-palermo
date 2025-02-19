<template>
    <div>
      <Header />
      <!-- Optionnel : le Carousel peut être intégré ici ou dans la page d'accueil -->
      <Carousel v-if="$route.path === '/'"/>
      <NuxtPage />
      <Footer />
    </div>
  </template>
  
  <script setup lang="ts">
  import Header from '~/components/Header.vue'
  import Footer from '~/components/Footer.vue'
  import Carousel from '~/components/Carousel.vue'
  </script>
  
  <style>
  /* Styles globaux ou liés au layout */
  </style>
  