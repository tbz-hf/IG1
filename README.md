# IG1

IT-Grundlagen Hardwaretechnik

***
### Node-RED

[http://${ADDR}:1880](http://${ADDR}:1880)

***
### Mosquitto Broker und Clients

Ansprechbar mittels den Mosquitto Clients Programmen, z.B. um Daten zu senden:

  mosquitto_pub -h ${ADDR} -t "iotkit/actors/servo2" -m "0.1" -q 0  
  
und Daten von einem Topic zu empfangen:

  mosquitto_sub -h ${ADDR} -t iotkit/alert/#  

***
### Samba/SMB

Seit 1992 bietet [Samba](https://www.samba.org/) sichere, stabile und schnelle Datei- und Druckdienste für alle Clients, die das SMB / CIFS-Protokoll verwenden, z. B. alle DOS- und Windows-Versionen, OS / 2, Linux und viele andere.

Auf dem Server ist Samba aktiviert und das Verzeichnis `/home/ubuntu/data` als Share `data` freigegeben.

Zugriff mittels:

[\\\\${ADDR}\data](\\\\${ADDR}\data)

