#!/bin/bash

packer build \
  -only=virtualbox-iso \
  templates/windows-7-x68-64.json
