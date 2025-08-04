<template>
    <section class="services">
        <div class="relative">
            <img src="/images/fond_tarifs.svg" alt="image2" class="w-full sm:h-[100vh] xl:h-auto object-cover">
            <h1 class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 sm:text-2xl xl:text-6xl text-white whitespace-nowrap font-bold">Stylé de bruxelles à palermo </h1>
        </div>
        <div class="w-4/5 h-4 bg-[#E09550] rounded-r-lg"></div>
    </section>
    <section class="px-4 my-8">
        <div class="border-4 border-[#E09550] rounded-3xl sm:text-sm xl:text-base">
            <h2 class="text-center text-white font-bold uppercase text-4xl bg-[#E09550] rounded-t-2xl py-2 shadow-md">Tarifs</h2>
            <div class="px-4 py-6 flex sm:flex-col xl:flex-row justify-between gap-4">
                <PriceTarifs titre="Shampooing - Soins" :items="soins" class="w-full"/>
                <PriceTarifs titre="Permanentes" :items="permanentes" class="w-full"/>
            </div>
            <div class="px-4 py-6 flex sm:flex-col xl:flex-row justify-between gap-4">
                <PriceTarifs titre="Brushing - Coupes" :items="brushing" class="w-full" />
                <div class="flex flex-col justify-between gap-4 sm:w-full xl:w-1/2">
                    <PriceTarifs titre="Autres services" :items="autres" class="w-full"/>
                    <PriceTarifs titre="Homme" :items="homme" class="w-full"/>
                </div>
            </div>
            <div class="px-4 py-6 flex  sm:flex-col xl:flex-row justify-between gap-4">
                <PriceTarifs titre="Balayage-Mèches-Coloration" :items="balayage" class="w-full"/>
                <PriceTarifs titre="Enfants" :items="enfants" class="w-full"/>
            </div>
            <div class="w-1/2 my-12 sm:mx-auto xl:mx-0">
                <p class="text-center font-bold text-[#E09550] sm:text-base xl:text-4xl">Dans nos forfaits est inclus <br> un shampooing normal.</p> 
            </div>
        </div>
        <div class="sm:py-4 xl:py-8 flex sm:flex-col xl:flex-row items-center gap-8 sm:ml-0 xl:ml-12 my-12">
          <button class="w-64 border border-[#E09550] py-3 text-[#E09550] rounded-full shadow-md hover:bg-[#E09550] hover:text-white transition easy 5s">{{ $t('buttons.contact') }}</button>
          <button class="w-64 border py-3 bg-[#E09550] text-white rounded-full shadow-md hover:bg-white hover:text-[#E09550] transition ease-in-out duration-500"><NuxtLink to="/">Retour à l’accueil</NuxtLink></button>
        </div>
    </section>
</template>

<script setup lang="ts">
    const soins = [
        { nom: "Shampooing spécifique", prix: "4 €" },
        { nom: "Démêlant", prix: "6 €" },
        { nom: "Soin", prix: "11 €" },
        { nom: "Soin Protocole à la Kératine", prix: "40 €" }
    ]
    const permanentes = [
        { nom: "Permanente cheveux courts", prix: "55 €" },
        { nom: "Permanente cheveux longs", prix: "70 €" },
        { nom: "Supplément cheveux longs/ épais", prix: "5/10 €" }
    ]
    const brushing = [
        { nom: "Brushing court", prix: "22 €" },
        { nom: "Brushing mi-long", prix: "24,50 €" },
        { nom: "Brushing long", prix: "28,50 €" },
        { nom: "Supplément cheveux long/épais", prix: "5/10 €" },
        { nom: "Séchage naturel", prix: "15 €" },
        { nom: "Coupe + brushing court", prix: "38 €" },
        { nom: "Coupe + brushing mi-long", prix: "48 €" },
        { nom: "Coupe + brushing long", prix: "53 €" },
        { nom: "Coupe + séchage naturel", prix: "32 €" }

    ]
    const autres = [
        { nom: "Lissage brésilien", prix: "120 €" },
        { nom: "Chignon soirée", prix: "50 €" },
        { nom: "Chignon mariée", prix: "80 €" },
        { nom: "Essai chignon mariée", prix: "35 €" }
    ]
    const homme = [
        { nom: "Coupe séchage", prix: "27 €" },
        { nom: "Coupe tondeuse", prix: "23 €" },
    ]
    const balayage = [
        { nom: "Balayage 1 ton", prix: "70 €" },
        { nom: "Balayage 2 tons", prix: "80 €" },
        { nom: "Balayage demi tête", prix: "50 €" },
        { nom: "Mèches 1 ton", prix: "80 €" },
        { nom: "Mèches 2 tons ", prix: "95 €" },
        { nom: "Mèches demi tête", prix: "60 €" },
        { nom: "Décoloration racine", prix: "55 €" },
        { nom: "Décoloration complète", prix: "85 €" },
        { nom: "Coloration racine ", prix: "47 €" },
        { nom: "Coloration complète", prix: "55 €" },
        { nom: "Coloration sans ammoniaque racine", prix: "52 €" },
        { nom: "Coloration sans ammoniaque complète", prix: "62 €" },
        { nom: "Supplément cheveux longs/ épais", prix: "5/10 €" },
        { nom: "Ombré", prix: "90 €" },
        { nom: "Coulage", prix: "30-35 €" }
    ]
    const enfants = [
        { nom: "Garçon (0-3 ans)", prix: "15 €" },
        { nom: "Garçon (4-10 ans)", prix: "18 €" },
        { nom: "Étudiant (à partir de 10 ans)", prix: "23 €" },
        { nom: "Filles (0-3 ans)", prix: "15 €" },
        { nom: "Fille (4-10 ans)", prix: "18 €" },
        { nom: "Étudiante coupe + séchage naturel ( à partir de 10 ans)", prix: "28 €" },
        { nom: "Étudiante coupe + brushing ( à partir de 10 ans)", prix: "33 €" },
        { nom: "Ampoule coloration", prix: "25 €" },
        { nom: "Coupe à sec", prix: "25 €" },
        { nom: "Coupe lissage", prix: "15 €" }
    ]
</script>