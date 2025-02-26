<template>
  <section class="services">
    <div class="relative">
      <img src="/images/img2_accueil.svg" alt="image2" class="w-full object-cover">
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

    <div class="my-20 px-20 flex justify-between items-center">
        <div class="border-2 border-[#E09550] w-1/2 h-[600px] flex justify-center items-center">
            <img src="/images/hair_recycle.svg" alt="hair_recycle">
        </div>
        <div class="w-1/2 space-y-10 px-20">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('hairrecycle.section1.title') }}</h2>
            <h3 class="text-2xl font-bold"> {{ $t('hairrecycle.section1.subtitle') }}</h3>
            <p>{{ $t('hairrecycle.section1.description.part1') }}</p>
            <p class="text-[#E09550]">{{ $t('hairrecycle.section1.description.part2') }}.</p>
            <p>{{ $t('hairrecycle.section1.description.part3') }}</p>
        </div>
    </div>

    <div class="relative">
      <img src="/images/image-hair.svg" alt="image2" class="w-full object-cover">
      <img src="/images/cheveux.svg" alt="cheveux" class="absolute bottom-40 z-10">
      <div class="w-full flex items-center justify-end gap-20 bg-[#E09550] py-12 px-24 absolute bottom-40">
        <p class="text-5xl text-white font-bold leading-normal">{{ $t('hairrecycle.section2.part1') }} <br> {{ $t('hairrecycle.section2.part2') }}</p>
        <div class="flex flex-col gap-6">
            <button onclick="window.open('https://client.optios.net/online_booking.html?/7827', '_blank', 'noopener')" class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500">{{ $t('buttons.rendezvous')}}</button>
            <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full bg-white shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact')}}</button>
        </div>
      </div>
    </div>

    <div class="flex items-center gap-4 py-28">
        <div class="px-20 flex flex-col gap-4 w-1/2">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('hairrecycle.section3.title') }} :</h2>
            <h3 class="text-2xl font-bold"> {{ $t('hairrecycle.section3.subtitle') }}</h3>
            <p class="py-4">{{ $t('hairrecycle.section3.description') }}</p>
            <div class="py-8">
                <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full mr-10 shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
            </div>
        </div>
        <div class="w-1/2">
            <img src="/images/pic-caressoule-4.svg" alt="Stylé" class="px-10 w-full object-cover h-[800px]" style="border-top-left-radius:150px">
        </div>
    </div>

    <div class="flex items-center gap-4 py-28 mb-28">
        <div class="w-1/2">
            <img src="/images/pic-caressoule-1.svg" alt="Stylé" class="px-10 w-full object-cover h-[800px]" style="border-top-left-radius:150px">
        </div>
        <div class="px-20 flex flex-col gap-4 w-1/2">
            <h2 class="text-[#E09550] text-4xl font-bold">{{ $t('hairrecycle.section4.title') }} :</h2>
            <h3 class="text-2xl font-bold"> {{ $t('hairrecycle.section4.subtitle') }}</h3>
            <p class="py-4">{{ $t('hairrecycle.section4.description') }}</p>
            <div class="py-8">
                <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full mr-10 shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
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
  