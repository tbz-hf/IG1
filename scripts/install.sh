#!/bin/bash
#  
# Mosquitto MQTT Broker und Node-RED starten
#
# 

# Daten werden unter /home/ubuntu/data abgelegt. NFS Mount auf Rack Server
sudo microk8s kubectl apply -f ~/IG1/DataVolume.yaml

# Services
sudo microk8s kubectl apply -f ~/IG1/mosquitto.yaml
sudo microk8s kubectl apply -f ~/IG1/nodered.yaml
