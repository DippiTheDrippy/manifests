#!/usr/bin/env bash

kustomize build example | kubectl delete -f -