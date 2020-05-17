---

title: Raspberry Pi - Get Started
date: 2015-12-20 20:41:25.000000000 -05:00

categories:
- DIY
excerpt: "In this post, we will set up our brand new Raspberry Pi for the first-time use."
---
In this post, we will set up our brand new Raspberry Pi for the first-time use. Getting excited? Let's go!

To get started with Respberry Pi, first, let's get a few extra devices:

* SD card - get this from my old camera
* HDMI cable - to connect to a monitor or TV
* Keyboard and mouse
* Power - a 5V micro USB power supply, used by most Android phones nowadays
* Internet - either an ethernet cable or a wifi adapter like [this](https://www.amazon.com/gp/product/B003MTTJOY?psc=1&redirect=true&ref_=oh_aui_detailpage_o08_s00). Make sure you have a ethernet cable to begin with, since wiki may need extra configuration at beginning.

Now once have all the devices (except SD card) get up, let's do the software part

* Copy OS to SD following [this](https://www.raspberrypi.org/downloads/raspbian/). There are quite a few options available, and I picked the most common one *Raspbian*. It is derived from Debian with some optimization specifically for Raspberry Pi.
* Log in for the first time. The default username is "pi", and the default password is "raspberry".
* After that, you will be directed to the "raspi-config". Or you can bring it up by type _sudo raspi-config_
* You can bring up the GUI by typing _startx_
* Update/upgrade the system/softwares:

_sudo apt-get update_
_sudo apt-get upgrade_

Now you are up running with the new Raspbian.

In the next post, I will set up remote access and hook it up with external storage.
