<template>
    <footer>
      <div class="px-20 py-4 border shadow-sm sm:hidden xl:flex justify-between items-center">
        <div class="space-y-5">
          <h2 class="font-bold">{{ $t('footer.text1') }} <br> Stylé de Bruxelles a Palermo</h2>
          <p>Avenue Jean Van Horenbeeck 1 <br> 1160 Bruxelles</p>
          <p class="font-bold">{{ $t('footer.text2') }} : <span class="font-normal">02/ 660 07 08</span></p>
          <p class="font-bold">{{ $t('footer.text3') }}  : <a href="#" class="font-normal text-blue-500">style.bxl.plm@gmail.com</a></p>
          <p class="font-bold">{{ $t('footer.text4') }}  <br> <span class="font-normal">{{ $t('footer.text5') }} </span></p>
          <p><span class="font-bold">{{ $t('footer.text8') }}</span> {{ $t('footer.text9') }} </p>
        </div>
        <img src="/images/style_noir.svg" alt="logo" class="w-[300px]">
        <div>
          <label class="font-bold">newsletter</label>
          <div class="border border-gray-300 rounded-lg mt-2">
            <input type="email" placeholder="Enter Your Email" class="p-4 rounded-lg">
            <button type="button" class="border border-[#E09550] py-4 px-8 rounded-lg font-bold text-white bg-[#E09550]" style="box-shadow:inset 0 2px 4px 0px rgba(0,0,0,0.3)">Subscribe</button>
          </div>
          <div class="flex items-center py-4 gap-4 text-4xl text-[#E09550]">
            <Icon name="uil:twitter" class="cursor-pointer" />
            <Icon name="uil:facebook" class="cursor-pointer" />
            <Icon name="uil:instagram" class="cursor-pointer" />
            <Icon name="uil:youtube" class="cursor-pointer" />
          </div>
        </div>
      </div>
      <div class="text-center">
        <div class="p-4 bg-[#E09550] text-white">{{ $t('footer.text6') }} </div>
        <div class="p-4">{{ $t('footer.text7') }} </div>
      </div>
    </footer>
  </template>
  
  <script setup lang="ts">
    // Aucun script particulier n'est nécessaire ici
  </script>
  
  <style scoped>

  </style>
  