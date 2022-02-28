---
title: Home Automation 3 - Home Assistant basics - configuration.yaml
date: 2022-02-28 00:01:01.000000000 -05:00
categories:
- DIY
- Home Automation
excerpt: "HA configuration.yaml"
header:
  teaser: /assets/images/2022/HA.png
---

While you may feel like you have all the control over the HA, you will definitely need to get your hands dirty with `configuration.yaml`.

### Locate the file
First, you should be able to its path in the frontend via `Configuration -> Settings -> Info`.

### Common components
Likely, you can start with default setting. As you add more and more stuff, you will likely see the file grow.

Just to name a few common components:
1. `automation`: this is the place to store all your automations. It can be viewed/editted from the frontend too.
1. `sensor` / `binary_sensor`: likely, you will start accumulating a list of devices. These are the places you manually setup/specify devices.
1. `recorder`: how to handle data retention/recording.
1. `notify`: groups to set up notification recipients. 
1. `http`: for blocking/allows connections/proxies, forwarding and etc.

### Splitting
As the file grow, you can split out some of the components to their dedicated files. For example, to split `sensor`, you can use 
```
sensor: !include sensor.yaml
```
and move all sensor related code to `sensor.yaml`.


### Reload the file
Once you have edit the file, you can either restart HA by restarting the docker if you choose the docker installation. Or go to `Configuration -> Server Control`. Some components can have hot reload, while you may need to click "RESTART" to have a full reload.
