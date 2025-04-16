<template>
  <section class="services">
    <div class="relative">
      <img src="/images/slide2.svg" alt="image2" class="w-full sm:h-[100vh] xl:h-auto object-cover">
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

    <div class="sm:my-10 xl:my-20 sm:px-10 xl:px-20 flex sm:flex-col xl:flex-row justify-between items-center">
        <div class="border-2 border-[#E09550] sm:w-full xl:w-1/2 h-full mb-4">
            <img src="/images/biosthetique.svg" alt="la biosthetique" class="object-cover w-full">
        </div>
        <div class="sm:w-full xl:w-1/2 sm:space-y-5 xl:space-y-10 sm:px-0 xl:px-20">
            <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold sm:text-center xl:text-start">{{ $t('biosthetique.section1.title') }}</h2>
            <h3 class="sm:text-lg xl:text-2xl font-bold sm:text-center xl:text-start">{{ $t('biosthetique.section1.subtitle') }}</h3>
            <p>{{ $t('biosthetique.section1.description') }}</p>
        </div>
    </div>

    <div class="w-full">
        <img src="/images/img_bleu.svg" alt="image-bleu" class="w-full">
    </div>

    <div class="my-10 sm:px-10 xl:px-20 flex sm:flex-col-reverse xl:flex-row justify-between items-center mb-40">
        <div class="sm:w-full xl:w-1/2 sm:space-y-5 xl:space-y-10 sm:px-0 xl:px-20">
            <h2 class="text-[#E09550] sm:text-xl xl:text-4xl font-bold sm:text-center xl:text-start">{{ $t('biosthetique.section2.title') }}</h2>
            <h3 class="sm:text-lg xl:text-2xl font-bold sm:text-center xl:text-start">{{ $t('biosthetique.section2.subtitle') }}</h3>
            <p class="py-4">{{ $t('biosthetique.section2.description1.part1') }}<br>{{ $t('biosthetique.section2.description1.part2') }}<br> {{ $t('biosthetique.section2.description1.part3') }}</p>
            <p>{{ $t('biosthetique.section2.description2.part1') }} <br> {{ $t('biosthetique.section2.description2.part2') }} <br> {{ $t('biosthetique.section2.description2.part3') }}</p>
            <div class="flex sm:flex-col xl:flex-row gap-8 items-center">
                <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
                <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
            </div>
        </div>
        <div class="sm:w-full xl:w-1/2 mb-8">
            <img src="/images/img_biosthetique.svg" alt="img_coiffure" class="w-full sm:rounded-tl-[50px] xl:rounded-tl-[200px]">
        </div>
    </div>

  </section>
</template>

<script setup lang="ts">
// Code spécifique à la page
</script>

<style scoped>

</style>
  