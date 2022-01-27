#!/bin/bash

#export GITHUB_TOKEN=<token>
#export GITHUB_USER=devopstales

flux check --pre

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=gitops-repo \
  --branch=main \
  --path=./flux2/ \
  --private=false \
  --personal=true \
  --token-auth

