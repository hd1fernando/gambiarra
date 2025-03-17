echo 'entrando na pasta...' \
&& echo "$s1" \
&& cd $s1 \
&& echo 'removendo node modules ...' \
&& rm -rf node_modules/ \
&& echo 'removendo .angular ...' \
&& rm -rf .angular \
&& echo 'limpando credenciais...' \
&& npm install -g vsts-npm-auth \
&& npm run refreshVSToken \
&& vsts-npm-auth -config .npmrc -force \
&& echo 'chamando npm install...' \
&& npm i -force && npm run serve-local
