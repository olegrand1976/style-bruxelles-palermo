<!-- components/PriceBlock.vue -->
<script setup lang="ts">
defineProps<{
  titre?: string
  items?: { nom: string; prix: string }[]
}>()
</script>

<template>
  <div class="w-1/2 sm:px-0 xl:px-10 space-y-2">
    <span class="sm:text-xl xl:text-2xl text-[#E09550] font-bold">
      {{ titre }}
    </span>
    <div v-for="(item, index) in items" :key="index" class="flex justify-between items-center border-b border-gray-400">
      <label>{{ item.nom }}</label>
      <div class="border border-[#E09550] bg-[#E09550] sm:w-20 xl:w-32 py-1 text-center text-white font-bold sm:text-base xl:text-xl rounded-t-2xl">
        {{ item.prix }}
      </div>
    </div>
  </div>
</template>
