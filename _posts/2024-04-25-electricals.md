---
title: Van Build - Electricals
date: 2024-04-24 00:00:01.000000000 -05:00
categories:
- DIY
- Van
excerpt: "Electricals."
header:
  teaser: /assets/images/2024/wiring_diagram.png 
---

This is a big topic, and is the one that lasted throughout the build.

# Design Choice

## AC or Not

We started thinking we only need DC, but quick realize that we might be spending a lot of time in campsite with AC hookups. Why not enjoy what we are paying for? So here it is AC.

## 30A vs 15A

30A is good to have, but we can't think of anything that heavy-duty. We are not planning to have an induction stove, or an instant pot. Mostly just charing our battery, and enjoy the peace of mind while hooked up.

Plus, 15A cables are much more flexible than the heavy 30A, which also requires special sockets/adaptors. So we went with 15A AC.

## 12V or 24/36/48V

This is an easy choice, since 12V accessories are much easier to find. Plus we don't expect to build a super large system, so 12V is pretty much enough. If you want to have heavy usage (e.g. a large inverter), then higher voltage means lower current, and hence lighter cables/smaller breakers/fuses.

## Solar of not

Solar is good to have, but requires a lot of installation work. We assume alternator and AC charging will be enough.

But to leave the door open, we left a 10/2 AWG wire from the back of the van to our electrical box, in case we change our mind. Just to spoil a bit more, we plan to wire our future solar power from the rear camera housing, which can be accessed from inside (thanks to the brillant idea from [buildagreenrv](https://www.buildagreenrv.com/our-conversion/promaster-diy-camper-van-conversion-electrical-and-solar/our-promaster-van-conversion-solar-panel-mounting/)).

## Location for the electrical box

Given our system is relatively small, we can fix everything into a medium sized box (25x15x20-in), which we placed right behind the seats, together with our shoe rack, which becomes a bench.

TODO - add a photo?

# Diagram

![wiring](/assets/images/2024/wiring_diagram.png)

# Key components

## Battery

We used Renogy's [200Ah 12V Lithium Iron Phosphate Battery](https://www.amazon.com/gp/product/B0C9ZFFDHP/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1), it is a heavy beast. We got a deal during the holiday season!

* [Manuel](https://store-fhnch.mybigcommerce.com/content/Renogy%20Core%20200ah/Renogy%20Core%20Series%2012V%20200Ah%20Battery%20Manual.pdf)

## DC charging

We picked [renogy's 50A charger]( https://a.co/d/92yhq02). It is a solid piece, which is very easy to setup. It is "almost" plug and play. One place that we descided to customize is "float charging voltage".

*After the constant voltage stage, the charger will reduce the battery voltage to
a float voltage set point*.

So it is probably "slightly" better for the battery if it is set to the 100% SOC voltage, which is 13.6V in our case. The charger does not have a float charging mode, we had to setup ourselves. (Note, you will need to purchase a bluetooth transmitter in order to customize it.)

As a bonus, this charger can be connected to solar power as well, so with max voltage ~25V. That limits the solar panels to be parallelly connected. On that other hand, the typical solar fitting only allows for wires no larger than 10AWG, which limits the current to 25-50A according to <https://www.bluesea.com/resources/1437>. Anyway, we didn't install solar in our initial build. Maybe something for the future.

* [Manual](https://www.renogy.com/content/RBC3050D1S-G1/RBC3050D1S-Manual.pdf)

![dc_charger](/assets/images/2024/renogy_charger.jpg)

## AC charging

We picked [Victron Energy Blue Smart IP22 30A charger](https://www.amazon.com/gp/product/B08NY23BKF/ref=ox_sc_saved_image_6?smid=A1AUFI5NHGNZ61&th=1), which is a solid device - plug and play.

* [Manual](https://www.victronenergy.com/upload/documents/Blue_Smart_IP22_Charger_manual_120V/Blue_Smart_IP22_Charger-en.pdf)

![ac_charger](/assets/images/2024/victron_charger.jpg)

## Fuse block

We liked fine control/protection of individual lines, and we went with the [Blue Sea 12-cuicit fuse block](https://www.amazon.com/Blue-Sea-Systems-Blade-Block/dp/B000THQ0CQ/ref=pd_bxgy_vft_high_sccl_1/141-4950332-7660012?pd_rd_w=DjK41&content-id=amzn1.sym.26a5c67f-1a30-486b-bb90-b523ad38d5a0&pf_rd_p=26a5c67f-1a30-486b-bb90-b523ad38d5a0&pf_rd_r=MMHM8Z6TGMDPDTT8KMGY&pd_rd_wg=1wkj4&pd_rd_r=2a2e762d-f09a-40c5-a27b-3bef7485251b&pd_rd_i=B001P6FTHC&th=1).

![fuse_block](/assets/images/2024/bluesea_fuse_block.jpg)

## Fuses and Breakers

Aside from the blade fuses used by the Fuse Block. We used circuit breakers for all our main positive wires.

For DC, we used [Mechanical Products](https://www.digikey.com/en/products/detail/mechanical-products/175-S0-060-2R/12698402), which is made in US and seems to have good  custom service. We email them for a faulty device, and they sent a replacement the second day. Will see how their quality in the future.

![dc_breaker](/assets/images/2024/dc_breaker.jpg)

For AC, we picked [Square D's homeline breaker with GFCI protctions](https://www.homedepot.com/p/Square-D-Homeline-15-Amp-Single-Pole-GFCI-Circuit-Breaker-HOM115GFICP/100153356). Note, the GFCI/AFCI dual breaker requires different breaker housing!

## Monitor

We picked [Renogy monitor with shunt](https://www.amazon.com/dp/B07RP5B5P7?linkCode=sl1&tag=yt-batterymonitors-20&linkId=254a5fb5f4db5c57a7330c978b9a0bb6&language=en_US&ref_=as_li_ss_tl&th=1). Straightward, but lacks bluetooth. Good enough for now.

* [Manual](https://m.media-amazon.com/images/I/91ZC7X9S6cL.pdf)

![monitor](/assets/images/2024/power_monitor_shunt.jpg)

## Outlets

We installed two 12V cigarette outlets and one 120V AC outlet on the side of our countertop. USB adaptor for 12V car cigarette outlets are so common nowadays, we decided only install cigarette outlets to give us more flexibility.

# Organization

The main challenge is to fit everything in a small space, while keeping a good ventilation. We ended up managing to fit everything in a box:

![org](/assets/images/2024/electrical_box.jpg)

Admittedly, the wiring can be improved. But the wires are heavy and short, which are relatively hard to work with.
