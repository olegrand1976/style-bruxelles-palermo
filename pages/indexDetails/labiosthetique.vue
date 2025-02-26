<template>
  <section class="services">
    <div class="relative">
      <img src="/images/slide2.svg" alt="image2" class="w-full object-cover">
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

    <div class="my-20 px-20 flex justify-between items-center">
        <div class="uppercase border-2 border-[#E09550] w-1/2 h-[600px] flex flex-col justify-center items-center text-center relative">
            <h1 class="text-6xl font-bold leading-[0.5] scale-y-150 relative">la biosthetique <br><span class="font-normal text-2xl">paris</span></h1>
            <p class="absolute bottom-16 text-2xl">the culture of total beauty</p>
        </div>
        <div class="w-1/2 space-y-10 px-20">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('biosthetique.section1.title') }}</h2>
            <h3 class="text-2xl font-bold">{{ $t('biosthetique.section1.subtitle') }}</h3>
            <p>{{ $t('biosthetique.section1.description') }}</p>
        </div>
    </div>

    <div class="w-full">
        <img src="/images/img_bleu.svg" alt="image-bleu" class="w-full">
    </div>

    <div class="my-10 px-20 flex justify-between items-center mb-40">
        <div class="w-1/2 space-y-10 px-20">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('biosthetique.section2.title') }}</h2>
            <h3 class="text-2xl font-bold">{{ $t('biosthetique.section2.subtitle') }}</h3>
            <p class="py-4">{{ $t('biosthetique.section2.description1.part1') }}<br>{{ $t('biosthetique.section2.description1.part2') }}<br> {{ $t('biosthetique.section2.description1.part3') }}</p>
            <p>{{ $t('biosthetique.section2.description2.part1') }} <br> {{ $t('biosthetique.section2.description2.part2') }} <br> {{ $t('biosthetique.section2.description2.part3') }}</p>
            <div class="space-x-10">
                <button class="border border-[#E09550] px-20 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
                <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
            </div>
        </div>
        <div class="w-1/2">
            <img src="/images/img_biosthetique.svg" alt="img_coiffure" class="w-full" style="border-top-left-radius:200px">
        </div>
    </div>

  </section>
</template>

<script setup lang="ts">
// Code spécifique à la page
</script>

<style scoped>

</style>
  