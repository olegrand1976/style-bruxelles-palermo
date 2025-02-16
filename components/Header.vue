<template>
    <header>
      <nav>
        <ul>
          <li><NuxtLink to="/">Qui sommes-nous ?</NuxtLink></li>
          <li><NuxtLink to="/services">Services</NuxtLink></li>
          <li><NuxtLink to="/contact">Contact</NuxtLink></li>
          <!-- Lien externe pour Prendre rendez-vous -->
          <li><a href="https://exemple-prendre-rendez-vous.com" target="_blank" rel="noopener">Prendre rendez-vous</a></li>
          <li>
            <LanguageToggle />
          </li>
        </ul>
      </nav>
    </header>
  </template>
  
  <script setup lang="ts">
  import { defineComponent } from 'vue'
  import LanguageToggle from '~/components/LanguageToggle.vue'
  </script>
  
  <style scoped>
  nav {
    background-color: #fff;
    padding: 1rem;
  }
  ul {
    display: flex;
    list-style: none;
    gap: 1.5rem;
    align-items: center;
    margin: 0;
    padding: 0;
  }
  a, a:visited {
    color: #333;
    text-decoration: none;
  }
  </style>
  