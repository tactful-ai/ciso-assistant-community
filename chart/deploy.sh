#!/bin/bash
set -e

# usage: .deploy.sh --version v0.1.0
#(running from the main directory is important as we're using relative paths)

# publish to https://...github.io/charts/
# which is a github pages repo running on https://../charts 

# delete old charts
rm *.tgz

helm lint .
helm package .


git checkout gh-pages
git pull
cp -v ./*.tgz ./charts
helm repo index ./charts --url https://<name>.github.io/charts --merge ./charts/index.yaml
git add .
git commit -m "release new charts"
git push
popd
