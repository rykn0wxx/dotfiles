module.exports = {
  root: true,
  env: {
    node: true,
    browser: true,
    es6: true
  },
  extends: ["eslint:recommended"],
  rules: {
    "no-console": process.env.NODE_ENV === "production" ? "error" : "off",
    "no-debugger": process.env.NODE_ENV === "production" ? "error" : "off",
    "space-before-function-paren": "off",
    "no-undef": "off",
    "no-useless-return": 0,
    "no-useless-escape": 0,
    camelcase: 'off',
    'template-curly-spacing': 0,
    'no-unused-vars': 0
  },
  parserOptions: {
    ecmaVersion: 6
  }
}
