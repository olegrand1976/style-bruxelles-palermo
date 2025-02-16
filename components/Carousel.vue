<template>
    <div class="carousel">
      <div v-for="(img, index) in images" :key="index" class="carousel-item">
        <img :src="img" alt="Slide image" />
      </div>
    </div>
  </template>
  
  <script setup lang="ts">
  import { ref } from 'vue'
  
  // Exemple d'images, à placer dans assets/images
  const images = ref([
    '/images/slide1.jpg',
    '/images/slide2.jpg',
    '/images/slide3.jpg'
  ])
  </script>
  
  <style scoped>
  .carousel {
    display: flex;
    overflow-x: auto;
  }
  .carousel-item {
    flex: 0 0 auto;
    width: 100%;
    max-height: 300px;
    margin-right: 1rem;
  }
  .carousel-item img {
    width: 100%;
    height: auto;
    object-fit: cover;
  }
  </style>
  