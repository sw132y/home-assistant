# Manage new devices for Home Assistant
**RF Sonoff Bridge**

Add new device to RF Sonoff Bridge
1. Login to Tasmota WebUI of the Sonoff Bridge
2. Open Console
3. Run command RfRaw 177
4. Send command from device remote control 
5. Copy object with RfRaw data to clipboard (see example below)
6. Open http://bbconv.hrbl.pl/
7. Convert copied payload

*Example:*
raw data
```
{"RfRaw":{"Data":"AA B1 03 0302 00DC 1F54 011010101010010110100110010110101010101010010110100110011001100112 55"}}
```
after conversion:
```
AA B0 29 03 08 0302 00DC 1F54 011010101010010110100110010110101010101010010110100110011001100112 55
```

Sending MQTT payload to the Bridge
Topic: `rf001_parter_kuchnia_bridge/cmnd/`
Payload: converted payload

# Flashing devices with Tasmota
## Sonoff Devices OTA with Tasmota
1. Use latest release https://github.com/itead/Sonoff_Devices_DIY_Tools
2. Run hotspot: sonoffDiy / 20170618sn
3. Connect device to the power with OTA mode (for Sonoff Mini there is the OTA jumper)
4. Run Sonoff Devices DIY Tools ./tool/tool_01DIY85(3.3.0).exe
5. Download tasmota \*.bin file on disk
6. Follow instruction https://github.com/arendst/Tasmota/wiki/Sonoff-DIY

**Tested with:** Sonoff Mini

## Sonoff Devices via GPIO
1. Use latest release https://github.com/letscontrolit/ESPEasy/releases
2. Prepare hardware and flashing - follow instruction on https://github.com/arendst/Tasmota/wiki/Prerequisites

**Tested with:** Sonoff Basic

## NodeMCU flashing with Tasmota
1. Use latest release https://github.com/tasmota/tasmota-pyflasher
2. Connect device via USB
3. Download tasmota \*.bin on disk
4. Select port and image
5. Click flash

**Tested with:** Wemos D1 Mini

## Tuya devices flashing with Tasmota OTA
1. Follow https://github.com/arendst/Tasmota/wiki/Tuya-OTA ==> https://github.com/ct-Open-Source/tuya-convert

Note: For me works only with Raspberry PI 3 (built in WiFi adapter). Make sure all prerequisets are installed correctly without errors. Important step is to connect smartphone to the hotspot.

**Tested with:** HYKKER 7W White Warm Wifi Bulb, HYKKER Socket 16A, WI-FI DGM PP-W162
