#!/bin/sh
set -e
# Important: You must change the version in the chart.yaml file or it will overwrite another older chart in the repo
#
#(running from the ./chat directory is important as we're using relative paths)

helm repo add bitnami https://raw.githubusercontent.com/bitnami/charts/archive-full-index/bitnami
helm repo update
helm dependencies update

#download sub-charts
helm dependency build .


helm lint .



