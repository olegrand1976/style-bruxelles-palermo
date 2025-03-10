<template>
  <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

  <section class="px-20">
    <div class="flex justify-between items-center py-20 text-6xl font[Luminari] text-gray-400">
      <p>CAUDALIE</p>
      <p>NUOO</p>
      <p class="font-bold">Origine</p>
      <p>Nomade</p>
    </div>
    <div class="flex items-center gap-4 py-28">
      <img src="/images/style_noir.svg" alt="Stylé" class="px-10">
      <div class="px-20 flex flex-col gap-4">
        <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('accueil.section1.title') }}</h2>
        <h3 class="text-2xl font-bold">{{ $t('accueil.section1.subtitle') }}</h3>
        <p class="py-4">{{ $t('accueil.section1.description1.part1') }}<br>{{ $t('accueil.section1.description1.part2') }}<br> {{ $t('accueil.section1.description1.part3') }} <br> {{ $t('accueil.section1.description1.part4') }} </p>
        <p>{{ $t('accueil.section1.description2.part1') }} <br> {{ $t('accueil.section1.description2.part2') }} <br> {{ $t('accueil.section1.description2.part3') }}</p>
        <div class="py-8">
          <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full mr-10 shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
          <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous') }}</button>
        </div>
      </div>
    </div>
    <div class="grid grid-cols-3 gap-10 my-20">
      <div class="relative">
        <img src="/images/img1_accueil.svg" alt="image1" class="w-full object-cover rounded-t-3xl">
      </div>
      <div class="relative">
        <img src="/images/img2_accueil.svg" alt="image2" class="w-full object-cover rounded-t-3xl">
      </div>
      <div class="relative">
        <img src="/images/img3_accueil.svg" alt="image3" class="w-full object-cover rounded-t-3xl">
      </div>
    </div>
    <div class="text-center text-5xl leading-normal font-bold"> {{ $t('accueil.section2.part1') }} <br> {{ $t('accueil.section2.part2') }}  <br>{{ $t('accueil.section2.part3') }}
    </div>
  </section>

  <section class="relative py-20">
    <img src="/images/img_biosthetique.svg" alt="biosthetique" class="w-full h-auto">
    <img src="/images/logo-coiffure.svg" alt="logo" class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-[500px]">
    <img src="/images/cheveux.svg" alt="cheveux" class="absolute bottom-40 z-10">
    <div class="w-full flex items-center justify-end gap-20 bg-[#E09550] py-12 px-24 absolute bottom-40">
      <p class="text-5xl text-white font-bold leading-normal">{{ $t('accueil.section3.part1') }} <br> {{ $t('accueil.section3.part2') }}</p>
      <div class="flex flex-col gap-6">
        <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous') }}</button>
        <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
      </div>
    </div>
  </section>

  <section class="my-20 px-20 flex justify-between items-center">
    <div class="w-1/2 space-y-10 px-20">
      <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('accueil.section4.title') }}</h2>
      <h3 class="text-2xl font-bold">{{ $t('accueil.section4.subtitle') }}</h3>
      <p>{{ $t('accueil.section4.description') }}</p>
     <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s"> <NuxtLink to="/indexDetails/labiosthetique">{{ $t('buttons.savoirplus') }}</NuxtLink></button>
    </div>
    <div class="border-2 border-[#E09550] w-1/2 h-full">
      <img src="/images/biosthetique.svg" alt="la biosthetique" class="object-cover w-full">
    </div>
  </section>

  <section class="my-20 px-20 flex justify-between items-center">
    <div class="border-2 border-[#E09550] w-1/2 h-[600px] flex justify-center items-center">
      <img src="/images/hair_recycle.svg" alt="hair_recycle">
    </div>
    <div class="w-1/2 space-y-10 px-20">
      <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('accueil.section5.title') }}</h2>
      <h3 class="text-2xl font-bold"> {{ $t('accueil.section5.subtitle') }}</h3>
      <p>{{ $t('accueil.section5.description.part1') }}</p>
      <p class="text-[#E09550]">{{ $t('accueil.section5.description.part2') }}.</p>
      <p>{{ $t('accueil.section5.description.part3') }}</p>
     <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s"><NuxtLink to="/indexDetails/hairRecycle">{{ $t('buttons.savoirplus') }} </NuxtLink></button>
    </div>
  </section>

  <section class="my-20">
    <img src="/images/img_bleu.svg" alt="image-bleu" class="w-full object-cover">
  </section>

  <section class="my-20 px-10 grid grid-cols-4 gap-6">
    <img src="/images/pic-caressoule-1.svg" alt="pic-caressoule" class="w-full object-cover rounded-3xl">
    <img src="/images/pic-caressoule-2.svg" alt="pic-caressoule" class="w-full object-cover rounded-3xl">
    <img src="/images/pic-caressoule-3.svg" alt="pic-caressoule" class="w-full object-cover rounded-3xl">
    <img src="/images/pic-caressoule-4.svg" alt="pic-caressoule" class="w-full object-cover rounded-3xl">
  </section>

  <section class="my-10 px-20 flex justify-between items-center">
    <div class="w-1/2 space-y-10 px-20">
      <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('accueil.section6.title') }}</h2>
        <h3 class="text-2xl font-bold">{{ $t('accueil.section6.subtitle') }}</h3>
        <p class="py-4">{{ $t('accueil.section6.description1.part1') }}<br>{{ $t('accueil.section6.description1.part2') }}<br> {{ $t('accueil.section6.description1.part3') }} <br> {{ $t('accueil.section6.description1.part4') }}</p>
        <p>{{ $t('accueil.section6.description2.part1') }} <br> {{ $t('accueil.section6.description2.part2') }} <br> {{ $t('accueil.section6.description2.part3') }}</p>
      <div class="space-x-10">
        <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
        <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous') }}</button>
      </div>
    </div>
    <div class="w-1/2">
      <img src="/images/img_coiffure.svg" alt="img_coiffure" class="w-full" style="border-top-right-radius:200px">
    </div>
  </section>

  <section class="flex justify-end px-20 mb-20">
    <div class="w-1/2 grid grid-cols-3 gap-6">
      <img src="/images/im1.svg" alt="image1" class="w-full object-cover rounded-3xl">
      <img src="/images/im2.svg" alt="image2" class="w-full object-cover rounded-3xl">
      <img src="/images/im2.svg" alt="image3" class="w-full object-cover rounded-3xl">
    </div>
  </section>
</template>

<script setup lang="ts">

// Code spécifique à la page si nécessaire
</script>

<style scoped>

</style>
