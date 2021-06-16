# IG1

IT-Grundlagen Hardwaretechnik.

Auf dem Server sind folgende Services installiert:

***
### Node-RED

Node-RED ist ein von IBM entwickeltes grafisches Entwicklungswerkzeug. Die Software ermöglicht es, Anwendungsfälle im Bereich des Internets der Dinge mit einem einfachen Baukastenprinzip umzusetzen. Die einzelnen Funktionsbausteine werden durch Ziehen von Verbindungen verbunden

Ansprechbar im Browser mittels:

* [http://${ADDR}:1880](http://${ADDR}:1880)

**Links**
 * [Home Page](https://nodered.org/)
 * [Node-RED Einführung](https://www.youtube.com/watch?v=f5o4tIz2Zzc)

***
### Mosquitto Broker und Clients

[Message Queue Telemetry Transport (MQTT)](http://de.wikipedia.org/wiki/MQ_Telemetry_Transport) ist ein offenes Nachrichten-Protokoll für Machine-to-Machine-Kommunikation (M2M), das die Übertragung von Messdaten-Daten in Form von Nachrichten zwischen Geräten ermöglicht, trotz hoher Verzögerungen oder beschränkten Netzwerken. Entsprechende Geräte reichen von Sensoren und Aktoren, Mobiltelefonen, Eingebetteten Systemen in Fahrzeugen oder Laptops bis zu voll entwickelten Rechnern. **MQTT basiert auf TCP-Sockets.**

MQTT implementiert das [**Publish/Subscribe-Pattern**](http://de.wikipedia.org/wiki/Beobachter_(Entwurfsmuster)). Es ersetzt die Punkt-zu-Punkt-Verbindungen durch einen zentralen Server (Broker), zu dem sich Datenproduzenten und -nutzer gleichermaßen verbinden können. Das Senden (publish) und Empfangen (subscribe) von Nachrichten funktioniert über sogenannte Topics. Ein **Topic** ist ein String, der eine Art Betreff der Nachricht darstellt, aber ähnlich einer Web Adresse aufgebaut ist.

[Mosquitto](https://mosquitto.org/) ist ein MQTT Broker.

Ansprechbar mittels den Mosquitto Clients Programmen, z.B. um Daten zu senden:

    mosquitto_pub -h ${ADDR} -t "iotkit/actors/servo2" -m "0.1" -q 0  
  
und Daten von einem Topic zu empfangen:

    mosquitto_sub -h ${ADDR} -t iotkit/alert/#  

