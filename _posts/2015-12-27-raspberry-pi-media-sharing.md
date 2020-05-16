---
title: Raspberry Pi - Media Sharing
date: 2015-12-27 18:48:18.000000000 -05:00
categories:
- DIY
permalink: "/2015/12/27/raspberry-pi-media-sharing/"
excerpt: "It is easy to set up Raspberry Pi as a media server, so you can share your music/video over the network."
---
It is easy to set up Raspberry Pi as a media server, so you can share your music/video over the network. A few steps are needed to achieve that.

First, mount an external hard drive. This step takes some effort for those not familiar with command line environment. But this [instruction](https://www.modmypi.com/blog/how-to-mount-an-external-hard-drive-on-the-raspberry-pi-raspian) is relatively easy to follow.

But there is one more issue. My hard drive is of NTFS file system, which seems to be not supported naturally by Raspberry Pi. After quite some search, it seems I need to install [NTFS-3g package](https://wiki.archlinux.org/index.php/NTFS-3G).  Finally, the hard drive is recognized! Now Raspberry Pi has access to my music/video/photos I have collected over the years.

Second, mount network drive. This is particular handy since I already have a shared USB stick plugged in my router as a small shared network drive. It will work almost the same for shared folder from Windows or Mac. Here is one [post](https://rasspberrypi.wordpress.com/2012/09/04/mounting-and-automounting-windows-shares-on-raspberry-pi/) I followed.

Third, connect Raspberry Pi from Windows. To access files from another computer, one way is to use Samba. Following the steps in this [instruction](http://raspberrypihq.com/how-to-share-a-folder-with-a-windows-computer-from-a-raspberry-pi/),  you can now see your Raspberry Pi in our Explorer->Network. So you can access any files in the shared folders like regular windows files.

Optional, Install Powerful PLEX Media Sever. I love PLEX for its all-platform supports and nice web interface. Naturally, I want to have it on my Raspberry Pi. There are many instructions flowing around, but not all of them are easy to follow. Raspberry Pi is not super powerful converting media, but it seems there is a workaround for Raspberry Pi 2. Luckily, that's the version I have.

Here is a lengthy [instruction](http://www.htpcguides.com/install-plex-media-server-on-raspberry-pi-2/) I finally was able to follow. Now just type in this URL in your web browser _http://ip.address:32400/web_, you can start enjoying your our music/video over the network.

I have to say, the speed it not very good. It takes quite some time to start playing. I guess it is due to the slow hard drive. But as least I can enjoy the music from any where at home.

(At the beginning, I wanted to write every step, but I figured it is a waste of time given there are so many nice instructions already. So I simply listed their links. Hope I will have the patience to write more when it comes to more detailed GPIO projects)
