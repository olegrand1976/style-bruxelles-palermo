<template>
  <section class="services">
    <div class="relative">
      <img src="/images/slide2.svg" alt="image2" class="w-full sm:h-[100vh] xl:h-auto object-cover">
      <img src="/images/logo-coiffure.svg" alt="logo" class="sm:hidden xl:block absolute top-40 right-0">
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>
    <div class="text-center sm:w-full xl:w-1/2 mx-auto space-y-5 py-20">
      <h1 class="text-5xl font-bold leading-normal text-[#E09550]">{{ $t('services.section1.title.part1') }} <br> {{ $t('services.section1.title.part2') }}</h1>
      <p class="leading-8 sm:w-3/4 xl:w-1/2 mx-auto">{{ $t('services.section1.description') }}</p>
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-l-lg ml-auto"></div>

    <div class="flex sm:flex-col-reverse xl:flex-row items-center gap-4 sm:py-10 xl:py-28">
      <div class="sm:px-10 xl:px-20 flex flex-col gap-4 sm:w-full xl:w-1/2">
        <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('services.section2.title') }}</h2>
        <h3 class="text-2xl font-bold">{{ $t('services.section2.subtitle') }}</h3>
        <p class="py-4">{{ $t('services.section2.description1.part1') }} <br> {{ $t('services.section2.description1.part2') }} <br> {{ $t('services.section2.description1.part3') }} <br>{{ $t('services.section2.description1.part4') }} </p>
        <p>{{ $t('services.section2.description2.part1') }} <br> {{ $t('services.section2.description2.part2') }} <br> {{ $t('services.section2.description2.part3') }}</p>
        <div class="sm:py-4 xl:py-8 flex sm:flex-col xl:flex-row gap-8 items-center">
          <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
          <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
        </div>
      </div>
      <div class="sm:w-full xl:w-1/2">
        <img src="/images/img3_accueil.svg" alt="Stylé" class="px-10 w-full object-cover h-[800px]" style="border-top-left-radius:150px">
      </div>
    </div>

    <div class="flex sm:flex-col xl:flex-row items-center gap-4 sm:py-10 xl:py-28">
      <div class="sm:w-full xl:w-1/2">
        <img src="/images/img1_accueil.svg" alt="Stylé" class="px-10 w-full object-cover h-[800px]" style="border-top-left-radius:150px">
      </div>
      <div class="sm:px-10 xl:px-20 flex flex-col gap-4 sm:w-full xl:w-1/2">
        <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('services.section3.title') }}</h2>
        <h3 class="text-2xl font-bold">{{ $t('services.section3.subtitle') }}</h3>
        <p class="py-4">{{ $t('services.section3.description1.part1') }} <br> {{ $t('services.section3.description1.part2') }} <br> {{ $t('services.section3.description1.part3') }} <br> {{ $t('services.section3.description1.part4') }} </p>
        <p>{{ $t('services.section3.description2.part1') }} <br> {{ $t('services.section3.description2.part2') }} <br> {{ $t('services.section3.description2.part3') }}</p>
        <div class="py-8 flex sm:flex-col xl:flex-row gap-8 items-center">
          <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
          <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
        </div>
      </div>
    </div>

  <div class="flex sm:flex-col-reverse xl:flex-row items-center gap-4 sm:py-10 xl:py-28">
      <div class="sm:px-10 xl:px-20 flex flex-col gap-4 sm:w-full xl:w-1/2">
        <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('services.section4.title') }}</h2>
        <h3 class="text-2xl font-bold">{{ $t('services.section4.subtitle') }}</h3>
        <p class="py-4">{{ $t('services.section4.description1.part1') }} <br> {{ $t('services.section4.description1.part2') }} <br> {{ $t('services.section4.description1.part3') }} <br> {{ $t('services.section4.description1.part4') }} </p>
        <p>{{ $t('services.section4.description2.part1') }} <br> {{ $t('services.section4.description2.part2') }} <br> {{ $t('services.section4.description2.part3') }}</p>
        <div class="py-8 flex sm:flex-col xl:flex-row gap-8 items-center">
          <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
          <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
        </div>
      </div>
      <div class="sm:w-full xl:w-1/2">
        <img src="/images/img2_accueil.svg" alt="Stylé" class="px-10 w-full object-cover h-[800px]" style="border-top-right-radius:150px">
      </div>
    </div>

  </section>
</template>

<script setup lang="ts">
// Code spécifique à la page
</script>

<style scoped>

</style>
  