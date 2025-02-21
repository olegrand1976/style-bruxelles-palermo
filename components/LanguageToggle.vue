<template>
  <div class="language-toggle">
    <button :class="{ active: currentLang === 'fr' }" @click="setLanguage('fr')">FR</button>
    <button :class="{ active: currentLang === 'nl' }" @click="setLanguage('nl')">NL</button>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const currentLang = ref('fr')

function setLanguage(lang: string) {
  currentLang.value = lang
  // Ici vous pouvez implémenter la logique de changement de langue (ex. via i18n)
}
</script>

<style scoped>
.language-toggle button {
  margin: 0 0.5rem;
  padding: 0.5rem 1rem;
}
.language-toggle button.active {
  font-weight: bold;
  background-color: #eee;
}
</style>
  