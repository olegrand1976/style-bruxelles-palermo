<template>
  <section class="contact">
    <div class="relative">
      <img src="/images/img-style.svg" alt="image2" class="w-full object-cover">
      <img src="/images/logo-coiffure.svg" alt="logo" class="absolute top-40 right-0">
      <h1 class="absolute top-40 left-20 text-white text-6xl font-bold">{{ $t('buttons.contact') }} ?</h1>
    </div>
    <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>
    <div class="flex px-10 my-40">
      <form class="w-1/2 px-10">
        <label for="nom" class="block py-2">{{ $t('contact.form.name') }}</label>
        <input type="text" :placeholder="$t('contact.form.name')" class="border border-gray-500 p-3 rounded-lg w-full">
        <label for="prenoms" class="block py-2">{{ $t('contact.form.firstname') }}</label>
        <input type="text" :placeholder="$t('contact.form.firstname')" class="border border-gray-500 p-3 rounded-lg w-full">
        <div class="flex gap-8">
          <div class="w-1/2">
            <label for="email" class="block py-2">{{ $t('contact.form.mail') }}</label>
            <input type="email" :placeholder="$t('contact.form.mail')" class="border border-gray-500 p-3 rounded-lg w-full">
          </div>
          <div class="w-1/2">
            <label for="phone" class="block py-2">{{ $t('contact.form.phone') }}</label>
            <input type="text" :placeholder="$t('contact.form.phone')" class="border border-gray-500 p-3 rounded-lg w-full">
          </div>
        </div>
        <label for="messages" class="block py-2">{{ $t('contact.form.message') }}</label>
        <textarea name="messages" id="" cols="30" rows="10" class="border border-gray-500 p-3 rounded-lg w-full"></textarea>
        <div class="flex justify-center">
          <button class="border bg-[#E09550] text-white w-48 h-12 rounded-lg mt-16">{{ $t('buttons.envoyer') }}</button>
        </div>
      </form>
      <div class="w-1/2">
        <img src="/images/map.svg" alt="google-map" class="w-full h-full object-cover">
      </div>
    </div>
  </section>
</template>
  
  <script setup lang="ts">
  // Code spécifique à la page
  </script>
  
  <style scoped>

  </style>
  