Sonoff OTA
https://github.com/arendst/Tasmota/wiki/Sonoff-DIY

**RF Sonoff Bridge**
Add new device to RF Sonoff Bridge
1. Login to Tasmota WebUI of the Bridge
2. Open Console
3. Run command RfRaw 177
4. Send command from device remote control 
5. Copy object with RfRaw data to clipboard
6. Open http://bbconv.hrbl.pl/
7. Convert payload

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

**Sonoff Devices OTA with Tasmota**
1. Use latest release https://github.com/itead/Sonoff_Devices_DIY_Tools
2. Run hotspot: sonoffDiy / 20170618sn
3. Connect device to the power with OTA mode (for Sonoff Mini there is the OTA jumper)
4. Run Sonoff Devices DIY Tools ./tool/tool_01DIY85(3.3.0).exe
5. Download tasmota \*.bin file on disk
6. Follow instruction https://github.com/arendst/Tasmota/wiki/Sonoff-DIY

Tested well with: Sonoff Mini

**NodeMCU flashing with Tasmota**
1. Use latest release https://github.com/tasmota/tasmota-pyflasher
2. Connect device via USB
3. Download tasmota \*.bin on disk
4. Select port and image
5. Click flash

Tested well with: Wemos D1 Mini
