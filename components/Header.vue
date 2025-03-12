<template>
  <header>
    <nav class="flex justify-between items-center bg-white sm:px-10 xl:px-20 py-3 fixed w-full top-0 z-10 shadow-xl">
      <img src="/images/logo-nav.svg" alt="Stylé">
      <div class="flex items-center gap-20">
        <ul class="hidden sm:hidden xl:flex list-none gap-8 items-center m-0 p-0">
          <li><NuxtLink :to="localePath('/')" class="nav-link">{{ $t('accueil.title') }}</NuxtLink></li>
          <li><NuxtLink :to="localePath('/services')" class="nav-link">{{ $t('services.title')}}</NuxtLink></li>
          <li><NuxtLink :to="localePath('/contact')" class="nav-link">{{ $t('contact.title')}}</NuxtLink></li>
        </ul>
        <button class="sm:absolute xl:relative sm:top-28 xl:top-auto sm:right-1/3 xl:right-auto">
          <a href="https://client.optios.net/online_booking.html?/7827" target="_blank" rel="noopener"
            class="px-8 py-3 bg-[#E09550] text-white rounded-full hover:bg-white hover:text-[#E09550] transition easy 5s">
            {{ $t('buttons.rendezvous') }}
          </a>
        </button>
        <div>
          <LanguageToggle />
        </div>
        <button @click="toggleMenu" class="xl:hidden">
          <img src="/images/navbar.svg" alt="navbar">
        </button>
      </div>
    </nav>

    <!--mobile navbar-->
    <div v-if="isMenuOpen" class="xl:hidden bg-white w-9/12 h-auto transition-all duration-300 overflow-hidden z-20 absolute right-0 shadow-xl">
      <div class="px-8">
        <div @click="toggleMenu" class="pt-8">
          <img src="/images/close.svg" alt="close">
        </div>
        <div class="flex justify-end px-10">
          <img src="/images/logo-nav.svg" alt="Stylé" class="w-32">
        </div>
        <nav class="text-xl">
          <NuxtLink :to="localePath('/')" class="block py-4 font-bold">{{ $t('accueil.title') }}</NuxtLink>
          <NuxtLink :to="localePath('/services')" class="block py-4">{{ $t('services.title')}}</NuxtLink>
          <NuxtLink :to="localePath('/contact')" class="block py-4">{{ $t('contact.title')}}</NuxtLink>
        </nav>
      </div>
      <div class="w-4/5 ml-auto h-4 bg-[#E09550] rounded-l-lg !px-0"></div>

      <!--footer-->
      <div class="px-8 py-4 flex flex-col">
        <div class="space-y-5">
          <h2 class="font-bold">{{ $t('footer.text1') }} <br> Stylé de Bruxelles a Palermo</h2>
          <p>Avenue Jean Van Horenbeeck 1 <br> 1160 Bruxelles</p>
          <p class="font-bold">{{ $t('footer.text2') }} : <span class="font-normal">02/ 660 07 08</span></p>
          <p class="font-bold">{{ $t('footer.text3') }}  : <a href="#" class="font-normal text-blue-500">style.bxl.plm@gmail.com</a></p>
          <p class="font-bold">{{ $t('footer.text4') }}  <br> <span class="font-normal">{{ $t('footer.text5') }} </span></p>
          <p><span class="font-bold">{{ $t('footer.text8') }}</span> {{ $t('footer.text9') }} </p>
        </div>
        <div class="py-4">
          <label class="font-bold">newsletter</label>
          <p>Inscrivez-vous à notre newsletter pour recevoir nos futures communications.</p>
          <div class="border border-gray-300 rounded-lg mt-2 flex justify-between">
            <input type="email" placeholder="Enter Your Email" class="p-4 rounded-lg w-full outline-none">
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
    </div>
  </header>
</template>
  
<script setup lang="ts">

  import { defineComponent } from 'vue'
  import LanguageToggle from '@/components/LanguageToggle.vue'
  import { useLocalePath } from '#i18n';
  import { ref } from 'vue';

  const localePath = useLocalePath()

  const isMenuOpen = ref(false);
  const toggleMenu = () => {
    isMenuOpen.value = !isMenuOpen.value;
  };

</script>
  
<style scoped>
/* style lien navbar */
.nav-link {
  position: relative;
  padding-bottom: 10px;
}
.nav-link.router-link-exact-active{
  color: #E09550;
}
.nav-link.router-link-exact-active::after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  width: 75%;
  border-bottom: 5px solid #E09550;
  border-radius: 20px;
}
</style>
  