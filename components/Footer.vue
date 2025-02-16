<template>
    <footer class="footer">
      <div class="footer-content">
        <div class="contact-info">
          <h2>Salon de Coiffure XYZ</h2>
          <p>Adresse : 123 Rue de la Coiffure, 1000 Bruxelles</p>
          <p>Téléphone : 012 34 56 78</p>
          <p>Email : <a href="mailto:contact@salondecoiffure.xyz">contact@salondecoiffure.xyz</a></p>
        </div>
        <div class="social-links">
          <a href="https://facebook.com" target="_blank" rel="noopener">Facebook</a>
          <a href="https://instagram.com" target="_blank" rel="noopener">Instagram</a>
          <a href="https://twitter.com" target="_blank" rel="noopener">Twitter</a>
        </div>
        <div class="copyright">
          <p>&copy; 2025 Salon de Coiffure XYZ. Tous droits réservés.</p>
        </div>
      </div>
    </footer>
  </template>
  
  <script setup lang="ts">
    // Aucun script particulier n'est nécessaire ici
  </script>
  
  <style scoped>
  .footer {
    background-color: #f8f8f8;
    padding: 2rem;
    text-align: center;
    color: #333;
    font-size: 0.9rem;
  }
  
  .footer-content {
    max-width: 1200px;
    margin: 0 auto;
  }
  
  .contact-info h2 {
    margin-bottom: 0.5rem;
    font-size: 1.2rem;
  }
  
  .contact-info p {
    margin: 0.2rem 0;
  }
  
  .social-links {
    margin: 1rem 0;
  }
  
  .social-links a {
    margin: 0 0.5rem;
    color: #333;
    text-decoration: none;
  }
  
  .social-links a:hover {
    text-decoration: underline;
  }
  </style>
  