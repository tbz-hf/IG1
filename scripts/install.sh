#!/bin/bash
#  
# Mosquitto MQTT Broker und Node-RED starten
#
# 

# Services
# sudo microk8s kubectl apply -f ~/IG1/mosquitto.yaml
sudo microk8s kubectl apply -f ~/IG1/nodered.yaml

# MQTT CLI
sudo apt-get install -y mosquitto-clients

# Introseite 
bash -x /opt/lernmaas/helper/intro
