<template>
  <div class="sm:w-3/5 xl:w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

  <section class="sm:px-7 xl:px-20">
    <div class="flex sm:flex-col xl:flex-row justify-center gap-4 items-center sm:py-10 xl:py-20 sm:text-5xl xl:text-6xl">
      <img src="/images/horaire.svg" alt="horaire">
      <h1 class="text-center font-bold sm:text-2xl xl:text-5xl">{{ $t('accueil.horaire.jour') }} <br class="xl:hidden">
        <span class="font-bold sm:text-4xl xl:text-5xl">{{ $t('accueil.horaire.heure') }}</span>
      </h1>
    </div>
    <div class="flex sm:flex-col xl:flex-row items-center gap-4 sm:py-4 xl:py-28">
      <img src="/images/style_noir.svg" alt="Stylé" class="px-10">
      <div class="sm:px-0 xl:px-20 flex flex-col gap-4">
        <h2 class="sm:text-center xl:text-start text-[#E09550] sm:text-xl xl:text-4xl font-bold">{{ $t('accueil.section1.title') }}</h2>
        <h3 class="sm:text-center xl:text-start sm:text-xl xl:text-2xl font-bold">{{ $t('accueil.section1.subtitle') }}</h3>
        <p class="py-4">{{ $t('accueil.section1.description1.part1') }}<br>{{ $t('accueil.section1.description1.part2') }}<br> {{ $t('accueil.section1.description1.part3') }} <br> {{ $t('accueil.section1.description1.part4') }} </p>
        <p>{{ $t('accueil.section1.description2.part1') }} <br> {{ $t('accueil.section1.description2.part2') }} <br> {{ $t('accueil.section1.description2.part3') }}</p>
        <div class="sm:py-4 xl:py-8 flex sm:flex-col xl:flex-row items-center gap-8">
          <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
          <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous') }}</button>
        </div>
      </div>
    </div>
    <div class="sm:flex sm:flex-col xl:grid grid-cols-3 gap-10 sm:my-10 xl:my-20">
      <img src="/images/img1_accueil.svg" alt="image1" class="w-full object-cover rounded-t-3xl">
      <img src="/images/img2_accueil.svg" alt="image2" class="w-full object-cover rounded-t-3xl">
      <img src="/images/img3_accueil.svg" alt="image3" class="w-full object-cover rounded-t-3xl">
    </div>
    <div class="text-center sm:text-2xl xl:text-5xl font-bold"> {{ $t('accueil.section2.part1') }} <br> {{ $t('accueil.section2.part2') }}  <br>{{ $t('accueil.section2.part3') }}
    </div>
  </section>

  <section class="relative sm:py-10 xl:py-20 flex flex-col">
    <img src="/images/img_biosthetique.svg" alt="biosthetique" class="w-full h-auto">
    <img src="/images/logo-coiffure.svg" alt="logo" class="absolute sm:top-1/4 xl:top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 sm:w-[150px] xl:w-[500px]">

    <div class="w-full flex sm:flex-col-reverse xl:flex-row items-center sm:gap-4 xl:gap-16 bg-[#E09550] sm:relative xl:absolute sm:bottom-0 xl:bottom-40">
      <img src="/images/cheveux.svg" alt="cheveux" class="sm:w-full xl:w-auto sm:mt-0 xl:mt-[-75px] z-10">
      <div class="flex flex-col gap-4 sm:items-center xl:items-start">
        <div class="text-white sm:py-10 xl:py-4 sm:px-4 xl:px-0">
          <p class="sm:text-3xl xl:text-5xl font-bold leading-normal text-center mb-4">{{ $t('accueil.section3.part1') }}</p>
          <p class="sm:text-2xl xl:text-3xl sm:text-center xl:text-normal"><span class="font-bold">{{ $t('accueil.section3.part2') }}</span> {{ $t('accueil.section3.part3') }}</p>
        </div>
        <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border border-[#E09550 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.reservation') }}</button>
      </div>
    </div>
  </section>

  <section class="sm:my-10 xl:my-20 sm:px-10 xl:px-20 flex sm:flex-col-reverse xl:flex-row justify-between items-center">
    <div class="sm:space-y-4 xl:space-y-10 sm:px-0 xl:px-20 sm:w-full xl:w-1/2 py-8 sm:text-center xl:text-start">
      <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold">{{ $t('accueil.section4.title') }}</h2>
      <h3 class="sm:text-xl xl:text-2xl font-bold">{{ $t('accueil.section4.subtitle') }}</h3>
      <p class="text-start">{{ $t('accueil.section4.description') }}</p>
      <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s"> <NuxtLink to="/indexDetails/labiosthetique">{{ $t('buttons.savoirplus') }}</NuxtLink></button>
    </div>
    <div class="border-2 border-[#E09550] sm:w-full xl:w-1/2 h-full">
      <img src="/images/biosthetique.svg" alt="la biosthetique" class="object-cover w-full">
    </div>
  </section>

  <section class="sm:my-10 xl:my-20 sm:px-7 xl:px-20 flex sm:flex-col xl:flex-row justify-between items-center">
    <div class="sm:w-full xl:w-1/2 flex justify-center items-center mb-4">
      <img src="/images/hair_recycle.svg" alt="hair_recycle">
    </div>
    <div class="sm:w-full xl:w-1/2 sm:space-y-4 xl:space-y-10 sm:px-0 xl:px-20 sm:text-center xl:text-start">
      <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold">{{ $t('accueil.section5.title') }}</h2>
      <h3 class="sm:text-xl xl:text-2xl font-bold"> {{ $t('accueil.section5.subtitle') }}</h3>
      <p class="text-start">{{ $t('accueil.section5.description.part1') }}</p>
      <p class="text-[#E09550] text-start">{{ $t('accueil.section5.description.part2') }}.</p>
      <p class="text-start">{{ $t('accueil.section5.description.part3') }}</p>
     <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s"><NuxtLink to="/indexDetails/hairRecycle">{{ $t('buttons.savoirplus') }} </NuxtLink></button>
    </div>
  </section>

  <section class="relative my-20 px-10">
    <div class="grid grid-cols-1 xl:grid-cols-4 gap-6">
      <div v-for="(img, i) in visibleImages" :key="i" class="w-full flex-shrink-0">
        <img :src="img" alt="pic-caressoule" class="w-full object-cover rounded-3xl"/>
      </div>
    </div>
    <button @click="prev" class="absolute top-1/2 left-4 transform -translate-y-1/2 bg-white p-2 rounded-full shadow-md hover:bg-gray-200">◀</button>
    <button @click="next" class="absolute top-1/2 right-4 transform -translate-y-1/2 bg-white p-2 rounded-full shadow-md hover:bg-gray-200">▶</button>
  </section>

  <section class="sm:my-10 xl:my-20">
    <img src="/images/img_bleu.svg" alt="image-bleu" class="w-full object-cover">
  </section>

  <section class="sm:px-7 xl:px-20 sm:my-10 xl:my-20">
    <div class="sm:pb-10 xl:pb-20 flex justify-between items-center">
      <div class="sm:text-center xl:text-start">
        <h2 class="text-[#E09550] font-bold sm:text-xl xl:text-4xl mb-4">{{ $t('accueil.section2.title') }}</h2>
        <span class="font-bold sm:text-lg xl:text-2xl">{{ $t('accueil.section2.subtitle') }}</span>
      </div>
      <button class="border px-8 py-3 bg-[#E09550] text-white rounded-full hover:bg-white hover:text-[#E09550] transition easy 5s">
        <NuxtLink to="/indexDetails/tarifs">Voir tous nos tarifs</NuxtLink>
      </button>
    </div>
    <div class=" sm:flex sm:flex-col xl:grid grid-cols-3 gap-10">
      <div class="relative">
        <img src="/images/slide3.svg" alt="image1" class="w-full sm:h-[300px] xl:h-[600px] object-cover rounded-3xl">
      </div>
      <div class="relative">
        <img src="/images/slide2.svg" alt="image2" class="w-full sm:h-[300px] xl:h-[600px] object-cover rounded-3xl">
      </div>
      <div class="relative">
        <img src="/images/slide1.svg" alt="image3" class="w-full sm:h-[300px] xl:h-[600px] object-cover rounded-3xl">
      </div>
    </div>
  </section>

  <section class="my-10 sm:px-10 xl:px-20 flex sm:flex-col xl:flex-row justify-between items-center">
    <div class="sm:w-full xl:w-1/2 sm:space-y-5 xl:space-y-10 sm:px-0 xl:px-20">
      <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold sm:text-center xl:text-start">{{ $t('accueil.section6.title') }}</h2>
        <h3 class="sm:text-xl xl:text-2xl font-bold sm:text-center xl:text-start">{{ $t('accueil.section6.subtitle') }}</h3>
        <p class="py-4">{{ $t('accueil.section6.description1.part1') }}<br>{{ $t('accueil.section6.description1.part2') }}<br> {{ $t('accueil.section6.description1.part3') }} <br> {{ $t('accueil.section6.description1.part4') }}</p>
        <p>{{ $t('accueil.section6.description2.part1') }} <br> {{ $t('accueil.section6.description2.part2') }} <br> {{ $t('accueil.section6.description2.part3') }}</p>
      <div class="sm:py-4 xl:py-8 flex sm:flex-col xl:flex-row items-center gap-8">
        <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
        <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous') }}</button>
      </div>
    </div>
    <div class="sm:w-full xl:w-1/2 sm:mt-10 xl:mt-auto">
      <img :src="selectedImage" alt="img_coiffure" class="w-full h-auto sm:rounded-tr-[50px] xl:rounded-tr-[200px]">
    </div>
  </section>

  <section class="flex sm:justify-normal xl:justify-end sm:px-10 xl:px-20 mb-20">
    <div class="sm:w-full xl:w-1/2 grid grid-cols-3 sm:gap-2 xl:gap-6">
      <img
        v-for="(image, index) in filteredImages"
        :key="index"
        :src="image"
        alt="images_coiffure"
        class="h-full w-full object-cover sm:rounded-xl xl:rounded-3xl cursor-pointer"
        @click="selectImage(image)"
      />
    </div>
  </section>
</template>

<script setup>

import { ref, onMounted, onUnmounted, computed } from 'vue';

  const images = [
    '/images/img_coiffure.svg',
    '/images/im1.svg',
    '/images/im2.svg',
    '/images/im3.svg'
  ];
  const selectedImage = ref(images[0]);
  const selectImage = (image) => {
    selectedImage.value = image;
  };
  const filteredImages = computed(() => {
    return images.filter(image => image !== selectedImage.value);
  });

  // slider des images
  const imagesSlider = [
    '/images/pic-caressoule-1.svg',
    '/images/pic-caressoule-2.svg',
    '/images/pic-caressoule-3.svg',
    '/images/pic-caressoule-4.svg',
    '/images/pic-caressoule-5.svg',
    '/images/pic-caressoule-6.svg',
    '/images/pic-caressoule-7.svg',
    '/images/pic-caressoule-8.svg'
  ]

  const currentIndex = ref(0);
  const imagesPerPage = ref(4);

  function updateImagesPerPage() {
    const width = window.innerWidth
    if (width < 640) {
      imagesPerPage.value = 1
    } else {
      imagesPerPage.value = 4 
    }
  }

  function next() {
    if (currentIndex.value + imagesPerPage.value < imagesSlider.length) {
      currentIndex.value++
    }
  }

  function prev() {
    if (currentIndex.value > 0) {
      currentIndex.value--
    }
  }

  const visibleImages = computed(() => {
    return imagesSlider.slice(currentIndex.value, currentIndex.value + imagesPerPage.value)
  })

  onMounted(() => {
    updateImagesPerPage()
    window.addEventListener('resize', updateImagesPerPage)
  })

  onUnmounted(() => {
    window.removeEventListener('resize', updateImagesPerPage)
  })
</script>

<style scoped>

</style>
