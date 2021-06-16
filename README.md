# IG1

IT-Grundlagen Hardwaretechnik

***
### Node-RED

 * [Home Page](https://nodered.org/)
 * [Node-RED Einführung](https://www.youtube.com/watch?v=f5o4tIz2Zzc)

Ansprechbar im Browser mittels:

* [http://${ADDR}:1880](http://${ADDR}:1880)

***
### Mosquitto Broker und Clients

[Message Queue Telemetry Transport (MQTT)](http://de.wikipedia.org/wiki/MQ_Telemetry_Transport) ist ein offenes Nachrichten-Protokoll für Machine-to-Machine-Kommunikation (M2M), das die Übertragung von Messdaten-Daten in Form von Nachrichten zwischen Geräten ermöglicht, trotz hoher Verzögerungen oder beschränkten Netzwerken. Entsprechende Geräte reichen von Sensoren und Aktoren, Mobiltelefonen, Eingebetteten Systemen in Fahrzeugen oder Laptops bis zu voll entwickelten Rechnern. **MQTT basiert auf TCP-Sockets.**

MQTT implementiert das [**Publish/Subscribe-Pattern**](http://de.wikipedia.org/wiki/Beobachter_(Entwurfsmuster)). Es ersetzt die Punkt-zu-Punkt-Verbindungen durch einen zentralen Server (Broker), zu dem sich Datenproduzenten und -nutzer gleichermaßen verbinden können. Das Senden (publish) und Empfangen (subscribe) von Nachrichten funktioniert über sogenannte Topics. Ein **Topic** ist ein String, der eine Art Betreff der Nachricht darstellt, aber ähnlich einer Web Adresse aufgebaut ist.

[Mosquitto](https://mosquitto.org/) ist ein MQTT Broker.

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

