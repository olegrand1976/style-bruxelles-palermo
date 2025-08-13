<template>
  <section class="services">
    <div class="relative">
      <img src="/images/img2_accueil.svg" alt="image2" class="w-full sm:h-[100vh] xl:h-auto object-cover">
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

    <div class="sm:my-10 xl:my-20 sm:px-10 xl:px-20 flex sm:flex-col xl:flex-row justify-between items-center">
        <div class="m:w-full xl:w-1/2 flex justify-center items-center">
            <img src="/images/hair_recycle.svg" alt="hair_recycle">
        </div>
        <div class="sm:w-full xl:w-1/2 sm:space-y-5 xl:space-y-10 sm:px-0 xl:px-20 mt-10">
            <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold sm:text-center xl:text-start">{{ $t('hairrecycle.section1.title') }}</h2>
            <h3 class="sm:text-lg xl:text-2xl font-bold sm:text-center xl:text-start"> {{ $t('hairrecycle.section1.subtitle') }}</h3>
            <p>{{ $t('hairrecycle.section1.description.part1') }}</p>
            <p class="text-[#E09550]">{{ $t('hairrecycle.section1.description.part2') }}.</p>
            <p>{{ $t('hairrecycle.section1.description.part3') }}</p>
        </div>
    </div>

    <div class="relative">
      <img src="/images/image-hair.svg" alt="image2" class="w-full object-cover">
      <div class="w-full flex sm:flex-col-reverse xl:flex-row items-center sm:gap-4 xl:gap-16 bg-[#E09550] sm:relative xl:absolute bottom-0">
        <img src="/images/cheveux.svg" alt="cheveux" class="sm:w-full xl:w-auto sm:mt-0 xl:mt-[-75px] z-10">
        <div class="flex flex-col gap-4 sm:items-center xl:items-start">
            <div class="text-white sm:py-10 xl:py-4 sm:px-4 xl:px-0">
                <p class="sm:text-3xl xl:text-5xl font-bold leading-normal text-center mb-4">{{ $t('hairrecycle.section2.part1') }}</p>
                <p class="sm:text-2xl xl:text-3xl"><span class="font-bold">{{ $t('hairrecycle.section2.part2') }}</span> {{ $t('hairrecycle.section2.part3') }}</p>
            </div>
            <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border border-[#E09550 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.reservation') }}</button>
        </div>
      </div>
    </div>

    <div class="flex sm:flex-col xl:flex-row items-center gap-4 sm:py-10 xl:py-28">
        <div class="sm:px-10 xl:px-20 flex flex-col gap-4 sm:w-full xl:w-1/2 sm:text-center xl:text-start">
            <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold">{{ $t('hairrecycle.section3.title') }} :</h2>
            <h3 class="sm:text-lg xl:text-2xl font-bold"> {{ $t('hairrecycle.section3.subtitle') }}</h3>
            <p class="py-4 text-start">{{ $t('hairrecycle.section3.description') }}</p>
            <div class="py-8">
                <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
            </div>
        </div>
        <div class="sm:w-full xl:w-1/2">
            <img src="/images/pic-caressoule-4.svg" alt="Stylé" class="px-10 w-full object-cover sm:h-[400px] xl:h-[800px] sm:rounded-tl-[50px] xl:rounded-tl-[150px]">
        </div>
    </div>

    <div class="flex sm:flex-col-reverse xl:flex-row items-center gap-4 sm:py-10 xl:py-28 sm:mb-4 xl:mb-28">
        <div class="sm:w-full xl:w-1/2">
            <img src="/images/pic-caressoule-1.svg" alt="Stylé" class="px-10 w-full object-cover sm:h-[400px] xl:h-[800px] sm:rounded-tl-[50px] xl:rounded-tl-[150px]">
        </div>
        <div class="sm:px-10 xl:px-20 flex flex-col gap-4 sm:w-full xl:w-1/2 sm:text-center xl:text-start">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('hairrecycle.section4.title') }} :</h2>
            <h3 class="text-2xl font-bold"> {{ $t('hairrecycle.section4.subtitle') }}</h3>
            <p class="py-4 text-start">{{ $t('hairrecycle.section4.description') }}</p>
            <div class="py-8">
                <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
            </div>
        </div>
    </div>

  </section>
</template>

<script setup lang="ts">
// Code spécifique à la page
</script>

<style scoped>

</style>
  