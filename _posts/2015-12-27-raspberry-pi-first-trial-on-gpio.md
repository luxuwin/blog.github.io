---
title: Raspberry Pi - GPIO Introduction
date: 2015-12-27 19:07:32.000000000 -05:00
categories:
- DIY
excerpt: "GPIO (general purpose input/output), is one of the most interesting thing on Raspberry Pi."
---
GPIO (general purpose input/output), is one of the most interesting thing on Raspberry Pi.

_"These pins are a physical interface between the Pi and the outside world. At the simplest level, you can think of them as switches that you can turn on or off (input) or that the Pi can turn on or off (output). --- raspberrypi.org"_

![alt text](/assets/images/2015/12/iot-rpi2-board_invariantculture_default.png)

The row of pings near the upper edge are GPIO pins. Ok, I have to admit they look ugly at the first look. But let's they can provide the connections between the physical world and the virtual world inside the computer (imagine the much bigger pin plugged into Neo's neck in the Matrix).

Here, just to copy a GPIO's layout for future reference. We will go through them in details when needed in the future.
![alt text](/assets/images/2015/12/gpio_pi2.png)

In the next few posts, I will jump back and forth between those two worlds, trying to build a connection.
To make things easy, I used Python (and just a little C) as my language(s) in the virtual world, while need some physical devices in the other world. Here are what I have got

1. Robot car chasis with two little motors: [link](http://www.amazon.com/Motor-Chassis-Classis-Wheels-Battery/dp/B00J0NI6DQ)
2. A lot of [sensors](http://www.aliexpress.com/item/16pcs-lot-Raspberry-pi-2-the-sensor-module-package-16-kinds-of-sensor-Free-shipping/32347143527.html). I don't know if I indeed need so many sensors, but just as a beginner, it is just fun to play with all these sensors to know what are the options. Besides, those sensors are inexpensive on AliExpress. I will report along with my experience on their qualities.
3. [L293D chip](http://www.aliexpress.com/item/5PCS-L293-L293D-DIP-16-Driver-IC/32410417971.html):  to control motors
4. Jump wires: both male and females
5. Breadboard

Ok, now we are ready to starting our journey of the two worlds.
