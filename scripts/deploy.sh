#!/usr/bin/env bash

mvn clean packege

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
   target/sweater-1.0-SNAPSHOT.jar \
   maks@192.168.0.158:/home/maks/

echo 'Restart sever...'

ssh -i ~/.ssh/id_rsa maks@192.168.0.158 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'

