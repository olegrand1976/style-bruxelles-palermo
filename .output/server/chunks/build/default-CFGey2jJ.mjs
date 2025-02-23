import { _ as _export_sfc, a as __nuxt_component_0 } from './server.mjs';
import { defineComponent, withCtx, createTextVNode, ref, mergeProps, useSSRContext } from 'vue';
import { ssrRenderAttrs, ssrRenderComponent, ssrRenderAttr, ssrRenderStyle, ssrRenderList, ssrRenderClass } from 'vue/server-renderer';
import { _ as __nuxt_component_0$2 } from './nuxt-link-Bn-VHLzn.mjs';
import { p as publicAssetsURL } from '../nitro/nitro.mjs';
import __nuxt_component_0$1 from './index-C-gVn7X_.mjs';
import { _ as _imports_0$1 } from './virtual_public-CWXgO5dz.mjs';
import { _ as _imports_0$2 } from './virtual_public-D742qK9_.mjs';
import 'unhead';
import '@unhead/shared';
import 'vue-router';
import '@iconify/vue';
import 'node:http';
import 'node:https';
import 'node:fs';
import 'node:path';
import 'node:url';
import '@iconify/utils';
import 'consola/core';
import 'ipx';
import '@iconify/utils/lib/css/icon';
import './index-DpsZeAFy.mjs';

const _imports_0 = publicAssetsURL("/images/logo-nav.svg");
const _sfc_main$4 = /* @__PURE__ */ defineComponent({
  __name: "LanguageToggle",
  __ssrInlineRender: true,
  setup(__props) {
    const currentLang = ref("fr");
    return (_ctx, _push, _parent, _attrs) => {
      _push(`<div${ssrRenderAttrs(mergeProps({ class: "language-toggle" }, _attrs))} data-v-f0caf1b0><button class="${ssrRenderClass({ active: currentLang.value === "fr" })}" data-v-f0caf1b0>FR</button><button class="${ssrRenderClass({ active: currentLang.value === "nl" })}" data-v-f0caf1b0>NL</button></div>`);
    };
  }
});
const _sfc_setup$4 = _sfc_main$4.setup;
_sfc_main$4.setup = (props, ctx) => {
  const ssrContext = useSSRContext();
  (ssrContext.modules || (ssrContext.modules = /* @__PURE__ */ new Set())).add("components/LanguageToggle.vue");
  return _sfc_setup$4 ? _sfc_setup$4(props, ctx) : void 0;
};
const LanguageToggle = /* @__PURE__ */ _export_sfc(_sfc_main$4, [["__scopeId", "data-v-f0caf1b0"]]);
const _sfc_main$3 = /* @__PURE__ */ defineComponent({
  __name: "Header",
  __ssrInlineRender: true,
  setup(__props) {
    return (_ctx, _push, _parent, _attrs) => {
      const _component_NuxtLink = __nuxt_component_0$2;
      _push(`<header${ssrRenderAttrs(_attrs)} data-v-9d02e68e><nav class="flex justify-between items-center bg-white px-20 py-3 fixed w-full top-0 z-20 shadow-xl" data-v-9d02e68e><img${ssrRenderAttr("src", _imports_0)} alt="Styl\xE9" data-v-9d02e68e><ul class="flex list-none gap-8 items-center m-0 p-0" data-v-9d02e68e><li data-v-9d02e68e>`);
      _push(ssrRenderComponent(_component_NuxtLink, {
        to: "/",
        class: "nav-link"
      }, {
        default: withCtx((_, _push2, _parent2, _scopeId) => {
          if (_push2) {
            _push2(`Qui sommes-nous ?`);
          } else {
            return [
              createTextVNode("Qui sommes-nous ?")
            ];
          }
        }),
        _: 1
      }, _parent));
      _push(`</li><li data-v-9d02e68e>`);
      _push(ssrRenderComponent(_component_NuxtLink, {
        to: "/services",
        class: "nav-link"
      }, {
        default: withCtx((_, _push2, _parent2, _scopeId) => {
          if (_push2) {
            _push2(`Services`);
          } else {
            return [
              createTextVNode("Services")
            ];
          }
        }),
        _: 1
      }, _parent));
      _push(`</li><li data-v-9d02e68e>`);
      _push(ssrRenderComponent(_component_NuxtLink, {
        to: "/contact",
        class: "nav-link"
      }, {
        default: withCtx((_, _push2, _parent2, _scopeId) => {
          if (_push2) {
            _push2(`Contact`);
          } else {
            return [
              createTextVNode("Contact")
            ];
          }
        }),
        _: 1
      }, _parent));
      _push(`</li><li data-v-9d02e68e><a href="https://exemple-prendre-rendez-vous.com" target="_blank" rel="noopener" class="border px-8 py-3 bg-[#E09550] text-white rounded-full hover:bg-white hover:text-[#E09550] transition easy 5s" data-v-9d02e68e>Rendez-vous en ligne</a></li><li data-v-9d02e68e>`);
      _push(ssrRenderComponent(LanguageToggle, null, null, _parent));
      _push(`</li></ul></nav></header>`);
    };
  }
});
const _sfc_setup$3 = _sfc_main$3.setup;
_sfc_main$3.setup = (props, ctx) => {
  const ssrContext = useSSRContext();
  (ssrContext.modules || (ssrContext.modules = /* @__PURE__ */ new Set())).add("components/Header.vue");
  return _sfc_setup$3 ? _sfc_setup$3(props, ctx) : void 0;
};
const Header = /* @__PURE__ */ _export_sfc(_sfc_main$3, [["__scopeId", "data-v-9d02e68e"]]);
const _sfc_main$2 = /* @__PURE__ */ defineComponent({
  __name: "Footer",
  __ssrInlineRender: true,
  setup(__props) {
    return (_ctx, _push, _parent, _attrs) => {
      const _component_Icon = __nuxt_component_0$1;
      _push(`<footer${ssrRenderAttrs(_attrs)}><div class="px-20 py-4 border shadow-sm flex justify-between items-center"><div class="space-y-5"><h2 class="font-bold">Coordonn\xE9es <br> Styl\xE9 de Bruxelles a Palermo</h2><p>Rue de la R\xE9sistance, 92/A <br> 7131 Bruxelles, Belgique</p><p class="font-bold">T\xE9l\xE9phone : <span class="font-normal">02/ 660 07 08</span></p><p class="font-bold">Email : <a href="#" class="font-normal text-blue-500">info@styl\xE9debruxelles.be</a></p><p class="font-bold">Horaires d\u2019ouverture <br> <span class="font-normal">7 jours /7 jours</span></p></div><img${ssrRenderAttr("src", _imports_0$1)} alt="logo" class="w-[300px]"><div><label class="font-bold">newsletter</label><div class="border border-gray-300 rounded-lg mt-2"><input type="email" placeholder="Enter Your Email" class="p-4 rounded-lg"><button type="button" class="border border-[#E09550] py-4 px-8 rounded-lg font-bold text-white bg-[#E09550]" style="${ssrRenderStyle({ "box-shadow": "inset 0 2px 4px 0px rgba(0,0,0,0.3)" })}">Subscribe</button></div><div class="flex items-center py-4 gap-4 text-4xl text-[#E09550]">`);
      _push(ssrRenderComponent(_component_Icon, {
        name: "uil:twitter",
        class: "cursor-pointer"
      }, null, _parent));
      _push(ssrRenderComponent(_component_Icon, {
        name: "uil:facebook",
        class: "cursor-pointer"
      }, null, _parent));
      _push(ssrRenderComponent(_component_Icon, {
        name: "uil:instagram",
        class: "cursor-pointer"
      }, null, _parent));
      _push(ssrRenderComponent(_component_Icon, {
        name: "uil:youtube",
        class: "cursor-pointer"
      }, null, _parent));
      _push(`</div></div></div><div class="text-center"><div class="p-4 bg-[#E09550] text-white">Site commercialis\xE9 par LL-IT Software &amp; Computer : www.ll-it-sc.be</div><div class="p-4">\xA9 2025 Styl\xE9. Tous droits r\xE9serv\xE9s.</div></div></footer>`);
    };
  }
});
const _sfc_setup$2 = _sfc_main$2.setup;
_sfc_main$2.setup = (props, ctx) => {
  const ssrContext = useSSRContext();
  (ssrContext.modules || (ssrContext.modules = /* @__PURE__ */ new Set())).add("components/Footer.vue");
  return _sfc_setup$2 ? _sfc_setup$2(props, ctx) : void 0;
};
const _sfc_main$1 = /* @__PURE__ */ defineComponent({
  __name: "Carousel",
  __ssrInlineRender: true,
  setup(__props) {
    const images = ref([
      "/images/slide1.svg",
      "/images/slide2.svg",
      "/images/slide3.svg",
      "/images/slide4.svg"
    ]);
    return (_ctx, _push, _parent, _attrs) => {
      _push(`<div${ssrRenderAttrs(mergeProps({ class: "h-[100vh] w-[100vw] m-auto relative grid place-items-center overflow-hidden" }, _attrs))} data-v-3c9890fb><div class="slides" data-v-3c9890fb><!--[-->`);
      ssrRenderList(images.value, (img, index) => {
        _push(`<div class="slide" data-v-3c9890fb><img${ssrRenderAttr("src", img)}${ssrRenderAttr("alt", "slide" + (index + 1))} class="w-full h-[100vh] object-cover" data-v-3c9890fb>`);
        if (index === 2) {
          _push(`<img${ssrRenderAttr("src", _imports_0$2)} alt="logo-coiffure" class="logo-coiffure" data-v-3c9890fb>`);
        } else {
          _push(`<!---->`);
        }
        _push(`</div>`);
      });
      _push(`<!--]--></div></div>`);
    };
  }
});
const _sfc_setup$1 = _sfc_main$1.setup;
_sfc_main$1.setup = (props, ctx) => {
  const ssrContext = useSSRContext();
  (ssrContext.modules || (ssrContext.modules = /* @__PURE__ */ new Set())).add("components/Carousel.vue");
  return _sfc_setup$1 ? _sfc_setup$1(props, ctx) : void 0;
};
const Carousel = /* @__PURE__ */ _export_sfc(_sfc_main$1, [["__scopeId", "data-v-3c9890fb"]]);
const _sfc_main = /* @__PURE__ */ defineComponent({
  __name: "default",
  __ssrInlineRender: true,
  setup(__props) {
    return (_ctx, _push, _parent, _attrs) => {
      const _component_NuxtPage = __nuxt_component_0;
      _push(`<div${ssrRenderAttrs(_attrs)}>`);
      _push(ssrRenderComponent(Header, null, null, _parent));
      if (_ctx.$route.path === "/") {
        _push(ssrRenderComponent(Carousel, null, null, _parent));
      } else {
        _push(`<!---->`);
      }
      _push(ssrRenderComponent(_component_NuxtPage, null, null, _parent));
      _push(ssrRenderComponent(_sfc_main$2, null, null, _parent));
      _push(`</div>`);
    };
  }
});
const _sfc_setup = _sfc_main.setup;
_sfc_main.setup = (props, ctx) => {
  const ssrContext = useSSRContext();
  (ssrContext.modules || (ssrContext.modules = /* @__PURE__ */ new Set())).add("layouts/default.vue");
  return _sfc_setup ? _sfc_setup(props, ctx) : void 0;
};

export { _sfc_main as default };
//# sourceMappingURL=default-CFGey2jJ.mjs.map
