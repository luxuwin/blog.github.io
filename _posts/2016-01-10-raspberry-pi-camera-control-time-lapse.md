---
title: Raspberry Pi - Camera Control & Time Lapse
date: 2016-01-10 20:37:15.000000000 -05:00
categories:
- DIY
- Photography
- Raspberry Pi
permalink: "/2016/01/10/raspberry-pi-camera-control-time-lapse/"
excerpt: "Raspberry Pi is so powerful, I start asking 'can it control my camera'? "
---
Raspberry Pi is so powerful, I start asking "can it control my camera"? I have been amazed by the fancy Time-Lapse photography, and wonder if Raspberry Pi can bring my experience to a new level. I have a Sony Mirrorless A6000, which comes with its own time-lapse app. But I don't quite like it for various reason (it costs 10 bucks!).
After an hour of searching, it seems possible!

First, very minimal hardwares requrement

* A tripod:  definitely need it.
* AC power adapter +  DC Coupler ([link](http://www.amazon.com/gp/product/B0083EQS3I?psc=1&amp;redirect=true&amp;ref_=ox_sc_act_title_1&amp;smid=AA3DL1YN5S7YK)): you can use battery a shooting around 1-2 hours, but for longer you will need this.
* A USB  to micro USB cable to connect Raspberry Pi to my Sony A6000

Now on the software part:
1. it took me quite a while to find this excellent library [gpohto2](http://gphoto.sourceforge.net/). Not only it can control my Sony A6000, it can also control more than 2000 cameras! Installation guide looks lengthy, but luckily some nice people has put everything together in a single [file](https://github.com/gonzalo/gphoto2-updater).  All you need to do is to copy and paste this following code, and select the stable version.
{%highlight bash %}
wget https://raw.githubusercontent.com/gonzalo/gphoto2-updater/master/gphoto2-updater.sh 
chmod +x gphoto2-updater.sh 
sudo ./gphoto2-updater.sh
{% endhighlight %}

Be patient. It takes like 15 minutes for me.
2. Connect Sony A6000 to the Raspberry Pi and power on.
3. Now check the connection by typing
{%highlight bash %}
gphoto2 --summary
{% endhighlight %}
You will see some text information about the camera. The camera is recognized.
4. Type the following to get the configuration. Each camera can have different things you can configure, and they are listed differently, too.
{%highlight bash %}
gphoto2 --list-config
{% endhighlight %}
After that, you can type the following to check its current status of certain configuration. The XXX is the one you get from --list-config. For example, XXX is _/main/capturesettings/shutterspeed_ for shutter speed. Most of them are self-explanatory.
{%highlight bash %}
gphoto2 --get-config XXX
{% endhighlight %}
You can also set the values by providing _value_.
{%highlight bash %}
gphoto2 --set-config XXX=value
{% endhighlight %}
5. Take the photo! gphoto2 has a command capture-image-and-load. Just provide the filename, it will take the photo and save to Raspberry Pi.
{%highlight bash %}
gphoto2 --capture-image-and-download --filename FILENAME
{% endhighlight %}
With all these tools, we are able to control the camera now. It should be a matter simple coding to set up a time-lapse function, so that it will take a photo every few seconds. Just make sure you have enough storage space :)
(My script is based on [David](http://blog.davidsingleton.org/raspberry-pi-timelapse-controller/), but I don't have his fancy LCD.)
Here is my first time-lapse work for sunset. There is some serious flickers that comes from discrete shutterspeed change. I believe there must be many ways to improve it. Now we have more to learn about time-lapse photography!

{% include video id="oa6xFmenUo0" provider="youtube" %}