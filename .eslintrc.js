module.exports = {
  root: true,
  env: {
    node: true,
    browser: true,
    es6: true
  },
  extends: ['eslint:recommended'],
  rules: {
    'array-element-newline': 'always',
    'array-bracket-newline': 'always',
    'space-before-function-paren': 'off',
    'no-undef': 'off',
    'no-useless-return': 0,
    'no-useless-escape': 0,
    camelcase: 'off',
    'template-curly-spacing': 0,
    'no-unused-vars': 0
  },
  parserOptions: {
    ecmaVersion: 6
  }
}
