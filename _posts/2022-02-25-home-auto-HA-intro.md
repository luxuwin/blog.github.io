---
title: Home Automation - Getting started with Home Assistant
date: 2022-02-25 00:00:01.000000000 -05:00
categories:
- DIY
- Home Automation
excerpt: "Getting started - let's start with the platform."
header:
  teaser: /assets/images/2022/HA.png
gallery:
  - url: /assets/images/2022/HA.png
    image_path: /assets/images/2022/HA.png
    alt: "HA intro"
    title: "HA intro"  
---
This will be first one of the series for home automation. 

It is a fun topic, and I will start from the basics.

There are quite a few flavors of home automation nowadays, like Amazon Alexa, Google home assistant, Apple.... Those are ecosystems promoted by big vendors. More and more ready to use devices are compatible with some of them, which makes it easy to use.

On the other hand, your hands are tied to these systems and you lose the joy of DIY-ing yourself. Plus, you have to pay for a high premium. Just look at the price difference of a "smart" bulb versus a "dumb" one. I can't really justify the difference, especially when you have learned how easy/cheap it is to do it yourself. However, I still admit that for some usage cases where professional quality is important (e.g. fire hazard for heavy duty equipment), it is still better to consider well branded products.

Now, we are ready to introduce the DIY-style platform, Home Assistant (HA). Before that, there are a few other alternatives, but HA has been paining a lot of momentum recently with huge of active users/developers. 

Hop onto HA's [home page](https://www.home-assistant.io/installation/), you can see there are a few different installation options. Many people uses a dedicated (e.g. an old laptop) to host HA, in which case HAIO gives the most flexibility. You will also have access to Add-Ons, which can be quite helpful.

However, I opt-ed in the docker implementation, so I can migrate it easily and can still have control over the host machine. The installation process is quite easy. Just follow [the official doc](https://www.home-assistant.io/installation/raspberrypi#docker-compose).

Create a `docker-compose.yml` file:
```
version: '3'
services:
  homeassistant:
    container_name: homeassistant
    image: "ghcr.io/home-assistant/home-assistant:stable"
    volumes:
      - /PATH_TO_YOUR_CONFIG:/config
      - /etc/localtime:/etc/localtime:ro
    restart: unless-stopped
    privileged: true
    network_mode: host
```
Then start it by running:

```
docker-compose up -d
```

Now you can access it via `http://<host>:8123`. The initial setup is really easy, create an account, setup home and you should be able to see the barebone frontend UI now. Don't forget to download a HA App on your phone, which can be handy.

Next, I will introduce some basics of HA in the next few posts.



