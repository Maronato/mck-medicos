#!/usr/bin/env sh

# abort on errors
set -e

/bin/rm -rf dist

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'gamamedicos.maronato.dev' > CNAME

git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:maronato/mck-medicos.git main:gh-pages

cd -
