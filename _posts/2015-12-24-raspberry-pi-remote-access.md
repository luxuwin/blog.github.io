---
title: Raspberry Pi - Remote Access
date: 2015-12-24 04:03:57.000000000 -05:00
categories:
    - DIY
excerpt: "Now that our little Raspberry Pi is running, time to move on to make it convenient for daily use."
---
Now that our little Raspberry Pi is running, time to move on to make it convenient for daily use.<!--more-->

I like to have my Raspberry Pi on all the time as a small network drive to sync all my files, and stream music and videos. I keep it in the corner of my closet and plan not to touch it forever. In this case, remote access is the way to go. You can also use it as a external TV box so you can stream Netflix or YouTube. We will get into this later. (BTW, Raspberry Pi is optimized for graphics, so it can handle video well, which makes it ideal as a TV box. Just make sure it has good internet connection)
We want to be able to access it remotely, instead of connecting it to a monitor or TV every time. Here is my solutions:

1. Get the IP address: open a terminal and type _ifconfig_. The local IP address typically looks like 192.168.X.X. 
2. [Enable SSH](https://www.raspberrypi.org/documentation/remote-access/ssh/): by default SSH is installed, but check it for sure. (BTW, remember to [change password](https://www.raspberrypi.org/documentation/configuration/raspi-config.md) if you haven't).
3. Connect SSH remotely: now hop to another computer and connect SSH. I like [PuTTY](http://www.putty.org/) which is a light weighted terminal, but choose any one you like. With this, you can do everything through the comment like. Sure you are already feeling comfortable if you started your computer experience from last century, but let's use some 20th century stuff next.
4. If you are using Mac or Linux, you need to enable X11 Forwarding. Just google the keyword and you will find thousands instructions. I am using Windows, so [Xming](http://sourceforge.net/projects/xming/) suits my need.
    * After installing Xming, configure PuTTY Configuration->Connection->SSH->X11: check Enable X11 Forwarding
    * Reconnect via SSH and type leafpad. After a few seconds, if you see a text editor pops up, then it is working!
5. You can also type _xstart_ to open the Raspberry Pi desktop. But personally, I prefer to launching the desktop by using Windows' remote desktop. Just open Remote Desktop Connection and enter the IP address, user name & password, you can access its desktop now!

A few useful graphic commands

* open file manager: _xdg-open_ .
* text editor: leafpad


Ok, as a next step, I will try to set it up as a media server, and then I plan to spend sometime on its powerful GPIO. Getting ready!


