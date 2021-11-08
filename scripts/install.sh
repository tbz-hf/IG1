#!/bin/bash
#  
# Mosquitto MQTT Broker und Node-RED starten
#
# 

# Services
sudo microk8s kubectl apply -f ~/IG1/mosquitto.yaml
# sudo microk8s kubectl apply -f ~/IG1/nodered.yaml # Container bekommt keine Verbindung zum VPN Netzwerk
sudo snap install node-red

# MQTT CLI
sudo apt-get install -y mosquitto-clients

# Library (Beispiele kopieren)
cp -rp lib ../data/

# Introseite 
bash -x /opt/lernmaas/helper/intro
