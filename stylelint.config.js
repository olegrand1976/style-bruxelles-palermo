module.exports = {
  customSyntax: 'postcss-html',
  extends: [
    'stylelint-config-standard',
    'stylelint-config-recommended-vue',
    'stylelint-config-prettier',
  ],
  rules: {
    "declaration-block-no-duplicate-properties": true,
    "at-rule-descriptor-no-unknown": null,
    "at-rule-descriptor-value-no-unknown": null,
    "at-rule-no-deprecated": null,
    "at-rule-prelude-no-invalid": null,
    "declaration-property-value-keyword-no-deprecated": null,
    "declaration-property-value-no-unknown": null,
    "media-feature-name-value-no-unknown": null,
    "media-query-no-invalid": null,
    "selector-anb-no-unmatchable": null,
  },
}
