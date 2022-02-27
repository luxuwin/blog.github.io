## CH340 patch for Linux
https://github.com/OLIMEX/ch340-dkms

Run Arduino. In the Files-Preferences add:
https://dl.espressif.com/dl/package_esp32_index.json

In Tools-Board-Board Manager search for ESP32 and install it

 From File-Examples select ESP32-Camera-CameraWebServer

 In select camera model uncomment CAMERA_MODEL_AI_THINKER and comment all other


 In Tools-Board select : 
 ESP32Wrover Module
Speed 921600
Flash Frequency 80Mhz
Flash Mode QIO
Partition Scheme: Huge app


when you open http://192.168.100.109/ you will see 

good source:
https://github.com/easytarget/esp32-cam-webserver
https://wiki.ai-thinker.com/esp32-cam

https://www.instructables.com/Getting-Started-With-ESP32-CAM-Streaming-Video-Usi/