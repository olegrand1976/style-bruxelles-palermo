<template>
  <div class="language-toggle relative inline-block text-left">
    <!-- Bouton principal -->
    <button @click="toggleDropdown" class="flex items-center gap-2">
      <Icon name="mdi:chevron-down" class="w-10 h-10 text-orange-500" />
      <span v-html="getIcon(currentLang.icon)" class="text-2xl"></span>
      <span>{{ currentLang.name }}</span>
    </button>

    <!-- Menu déroulant -->
    <div v-if="isOpen" class="absolute left-0 mt-2 w-24 bg-white border rounded-lg shadow-md z-10">
      <ul class="py-2">
        <li
          v-for="lang in languages"
          :key="lang.code"
          @click="changeLanguage(lang.code)"
          class="flex items-center gap-2 px-4 py-2 cursor-pointer hover:bg-gray-100"
        >
          <span v-html="getIcon(lang.icon)"></span>
          <span>{{ lang.name }}</span>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        isOpen: false,
        languages: [
          { code: 'fr', name: 'FR', icon: '<span>🇫🇷</span>' },
          { code: 'nl', name: 'NL', icon: '<span>🇳🇱</span>' }
        ],
      }
    },
    computed: {
      currentLang() {
        return this.languages.find(lang => lang.code === this.$i18n.locale) || this.languages[0]
      }
    },
    methods: {
      toggleDropdown() {
        this.isOpen = !this.isOpen
      },
      changeLanguage(locale) {
        this.$i18n.setLocale(locale)
        this.isOpen = false
      },
      getIcon(icon) {
        return icon
      }
    }
  }
</script>

<style scoped>

</style>
