<template>
  <section class="contact">
    <div class="relative">
      <img src="/images/img-style.svg" alt="image2" class="w-full sm:h-[100vh] xl:h-auto object-cover">
      <img src="/images/logo-coiffure.svg" alt="logo" class="absolute sm:top-1/2 xl:top-40 sm:left-1/2 xl:right-0 sm:-translate-x-1/2 xl:translate-x-0 sm:w-64 xl:w-auto">
      <h1 class="whitespace-nowrap absolute sm:top-1/3 xl:top-40 sm:left-1/2 xl:left-20 sm:-translate-x-1/2 xl:translate-x-0 text-white sm:text-3xl xl:text-6xl font-bold">{{ $t('buttons.contact') }} ?</h1>
    </div>
    <div class="sm:w-1/2 xl:w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>
    <div class="flex sm:flex-col xl:flex-row px-10 sm:my-20 xl:my-40">
      <form class="sm:w-full xl:w-1/2 sm:px-0 xl:px-10">
        <label for="nom" class="block py-2">{{ $t('contact.form.name') }}</label>
        <input type="text" :placeholder="$t('contact.form.name')" class="border border-gray-500 p-3 rounded-lg w-full">
        <label for="prenoms" class="block py-2">{{ $t('contact.form.firstname') }}</label>
        <input type="text" :placeholder="$t('contact.form.firstname')" class="border border-gray-500 p-3 rounded-lg w-full">
        <div class="flex sm:flex-col xl:flex-row sm:gap-0 xl:gap-8">
          <div class="sm:w-full xl:w-1/2">
            <label for="email" class="block py-2">{{ $t('contact.form.mail') }}</label>
            <input type="email" :placeholder="$t('contact.form.mail')" class="border border-gray-500 p-3 rounded-lg w-full">
          </div>
          <div class="sm:w-full xl:w-1/2">
            <label for="phone" class="block py-2">{{ $t('contact.form.phone') }}</label>
            <input type="text" :placeholder="$t('contact.form.phone')" class="border border-gray-500 p-3 rounded-lg w-full">
          </div>
        </div>
        <label for="messages" class="block py-2">{{ $t('contact.form.message') }}</label>
        <textarea name="messages" id="" cols="30" rows="10" class="border border-gray-500 p-3 rounded-lg w-full"></textarea>
        <div class="flex justify-center">
          <button class="border bg-[#E09550] text-white w-48 h-12 rounded-lg sm:mt-8 xl:mt-16 sm:mb-8 xl:mb-0 uppercase">{{ $t('buttons.envoyer') }}</button>
        </div>
      </form>
      <div class="sm:w-full xl:w-1/2">
        <img src="/images/map.svg" alt="google-map" class="w-full h-full object-cover rounded-3xl">
      </div>
    </div>
  </section>
</template>
  
  <script setup lang="ts">
  // Code spécifique à la page
  </script>
  
  <style scoped>

  </style>
  