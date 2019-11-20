## A super simple docker image that contains the airbnb eslint configuration.
### Feel free to adopt the .eslintrc file to suit your needs

`docker build -t my-airbnb-eslint-image .`  
`docker run -it --rm -v ${PWD}:/usr/src/app my-airbnb-eslint-image eslint --version`  
`docker run -it --rm -v ${PWD}:/usr/src/app my-airbnb-eslint-image eslint bad-code.js`  

Should yield:  
```
/usr/src/app/bad-code.js
   1:1   error    Unexpected var, use let or const instead                                                               no-var
   7:38  error    'reject' is defined but never used                                                                     no-unused-vars
  15:9   error    Expected parentheses around arrow function argument                                                    arrow-parens
  17:5   warning  Unexpected console statement                                                                           no-console
  25:9   error    Expected parentheses around arrow function argument                                                    arrow-parens
  25:22  error    Unexpected block statement surrounding arrow body; move the returned value immediately after the `=>`  arrow-body-style
  26:38  error    Expected parentheses around arrow function argument                                                    arrow-parens
  28:9   error    Expected parentheses around arrow function argument                                                    arrow-parens
  29:5   warning  Unexpected console statement                                                                           no-console

✖ 9 problems (7 errors, 2 warnings)
  6 errors and 0 warnings potentially fixable with the `--fix` option.
```

`docker run -it --rm -v ${PWD}:/usr/src/app my-airbnb-eslint-image eslint bad-code.js --fix`

### Bad code js file is from Wes Bos from his ES6 for everyone course. Check it out -it's great
