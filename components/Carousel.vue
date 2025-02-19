<template>
  <div class="h-[100vh] w-[100vw] m-auto relative grid place-items-center overflow-hidden">
    <div class="slides">
      <div class="slide" v-for="(img, index) in images" :key="index">
        <img :src="img" :alt="'slide' + (index + 1)" class="w-full h-[100vh] object-cover" />
        <img v-if="index === 2" src="/images/logo-coiffure.svg" alt="logo-coiffure" class="logo-coiffure" />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const images = ref([
  '/images/slide1.svg',
  '/images/slide2.svg',
  '/images/slide3.svg',
  '/images/slide4.svg'
])
</script>

<style scoped>
/* slide infinit */
.slides {
  display: flex;
  width: calc(100vw * 4);
  animation: scroll 15s linear infinite;
}

.slide {
  position: relative;
  height: 100vh;
  width: 100vw;
  display: flex;
  align-items: center;
  justify-content: center;
}

@keyframes scroll {
  0% {
    transform: translateX(0);
  }
  100% {
    transform: translateX(calc(-100vw * 3));
  }
}
.logo-coiffure{
  position: absolute;
  top: 50%;
  left: 75%;
  transform: translate(-50%, -50%);
}
</style>
