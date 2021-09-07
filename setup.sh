#!/bin/bash

apt-get update -y
apt-get install software-properties-common -y
add-apt-repository ppa:plt/racket -y
apt-get install -y racket
apt-get clean
raco setup --doc-index --force-user-docs
raco pkg install -i --auto rackunit-abbrevs rebellion minikanren-ee sugar

