<template>
  <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>

  <section class="px-20">
    <div class="flex justify-between items-center py-20 text-6xl font[Luminari]  text-gray-400">
      <p>CAUDALIE</p>
      <p>NUOO</p>
      <p class="font-bold">Origine</p>
      <p>Nomade</p>
    </div>
    <div class="flex items-center gap-4 py-28">
      <img src="/images/style_noir.svg" alt="Stylé" class="px-10">
      <div class="px-20 flex flex-col gap-4">
        <h2 class="text-[#E09550] text-4xl font-bold">Stylé, de Bruxelles à Palermo</h2>
        <h3 class="text-2xl font-bold">L’art de la coiffure sans frontières</h3>
        <p class="py-4">2344 kilomètres et 11 ans d’expériences les séparaient, mais leur passion les a réunies.
          Jenny, bruxelloise, et Letizia, originaire de Palerme, <br> partagent une vision commune de la coiffure : élégance, savoir-faire et authenticité.
          Arrivée en Belgique en 2017, Letizia croise le chemin de Jenny dans un salon de Watermael-Boitsfort. Très vite, une alchimie naturelle s’installe entre elles, <br> tant sur le plan professionnel que personnel. <br> Ce qui n’était au départ qu’une belle rencontre est devenu une évidence : créer ensemble un espace où chaque client se sent unique et sublimé. </p>
        <p>C’est ainsi qu’est né "Stylé, de Bruxelles à Palermo". <br> Depuis le 1ᵉʳ juillet 2020, leur salon situé à Auderghem est un véritable écrin dédié à la      beauté capillaire, où le savoir-faire italien et la précision belge se conjuguent harmonieusement.Que vous souhaitiez une coupe tendance, une coloration éclatante ou un soin expert, Jenny et Letizia vous accueillent avec passion et bienveillance. <br> Parce que votre style est notre signature.</p>
        <div class="py-8">
          <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full mr-10 shadow-md">Contactez-nous</button>
          <button class="border px-10 py-3 bg-[#E09550] text-white rounded-full shadow-md">Rendez-vous en ligne</button>
        </div>
      </div>
    </div>
    <div class="grid grid-cols-3 gap-10 my-20">
      <div class="relative">
        <img src="/images/img1_accueil.svg" alt="image1" class="w-full object-cover rounded-t-3xl">
        <p class=" text-center text-2xl font-bold py-5 text-white bg-white/50 absolute bottom-10 w-full">coupe tendance</p>
      </div>
      <div class="relative">
        <img src="/images/img2_accueil.svg" alt="image2" class="w-full object-cover rounded-t-3xl">
        <p class=" text-center text-2xl font-bold py-5 text-white bg-white/50 absolute bottom-10 w-full">coloration éclatante</p>
      </div>
      <div class="relative">
        <img src="/images/img3_accueil.svg" alt="image3" class="w-full object-cover rounded-t-3xl">
        <p class=" text-center text-2xl font-bold py-5 text-white bg-white/50 absolute bottom-10 w-full">soin expert</p>
      </div>
    </div>
    <div class="text-center text-5xl leading-normal font-bold">Stylé s'engage pour une beauté durable ! <br> Grâce à notre collaboration avec La Biosthétique,  <br> nous donnons une seconde vie aux cheveux <br> coupés pour un avenir plus vert.
    </div>
  </section>

  <section class="relative">
    <img src="/images/ticket.svg" alt="ticket" class="absolute top-[-15px] left-14">
    <img src="/images/img_biosthetique.svg" alt="biosthetique" class="w-full h-auto">
    <img src="/images/logo-coiffure.svg" alt="logo" class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-[500px]">
    <img src="/images/cheveux.svg" alt="cheveux" class="absolute bottom-10 z-10">
    <div class="w-full flex items-center justify-end gap-20 bg-[#E09550] py-12 px-24 absolute bottom-10">
      <p class="text-5xl text-white font-bold leading-normal">Contactez-nous <br> pour un rendez-vous !</p>
      <div class="flex flex-col gap-6">
        <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full bg-white shadow-md">Rendez-vous en ligne</button>
        <button class="border border-[#E09550] px-10 py-3 text-[#E09550] rounded-full bg-white shadow-md">Contactez-nous</button>
      </div>
    </div>
  </section>

</template>

<script setup lang="ts">
// Code spécifique à la page si nécessaire
</script>

<style scoped>

</style>
