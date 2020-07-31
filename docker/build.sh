#!/bin/bash

set -e
set -x

#docker build --build-arg buildtime_variable=16000 --file Dockerfile.kaldi-attendance --tag alphacep/kaldi-en:attendance .
#sudo docker run -p 2700:2700 alphacep/kaldi-en:attendance

docker build --build-arg buildtime_variable=16000 --file Dockerfile.kaldi-english --tag alphacep/kaldi-en:english .
sudo docker run -p 2701:2700 alphacep/kaldi-en:english


#docker build --file Dockerfile.kaldi-vosk-server --tag alphacep/kaldi-vosk-server:latest .
#docker build --file Dockerfile.kaldi-en --tag alphacep/kaldi-en:latest .


#for kind in vosk-server vosk-server-atom ru en de cn en-atom fr-atom ru-atom vosk-server-grpc-en; do
#    docker build --squash --file Dockerfile.kaldi-${kind} --tag alphacep/kaldi-${kind}:latest .
#done

#for kind in vosk-server vosk-server-atom ru en de cn en-atom fr-atom ru-atom vosk-server-grpc-en; do
#    docker push alphacep/kaldi-${kind}:latest
#done
