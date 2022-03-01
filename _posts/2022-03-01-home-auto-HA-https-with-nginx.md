---
title: Home Automation 4 - HTTPS/reverse proxy with nginx
date: 2022-03-01 00:00:01.000000000 -05:00
categories:
- DIY
- Home Automation
excerpt: "Setting up HTTPS."
header:
  teaser: /assets/images/2022/HA.png
gallery:
  - url: /assets/images/2022/HA.png
    image_path: /assets/images/2022/HA.png
    alt: "HA intro"
    title: "HA intro"  
---

In order to access your HA instance outside of your local network, there are several ways. Just to name a few:

1. Set up a VPN so that you can access it via a local IP, just like at home. 
1. Set up a port forwarding in your router. For many homes, the IP address is dynamic. So you need to now your home IP in real time. One way is to use services such as [Duck DNS](https://www.duckdns.org/), which requires some setup on your local network to update the registration when the IP changes. It is pretty easy. You can further enhance the security by using HTTPS.
1. Or you can use HA's cloud service. It is not free, and I am not 100% confident about the security being exposed.

Originally, I used #1 as I already has a VPN. But as I tried to integrate my Nest ThermalStat, it is required to have a HTTPS, so it forced me onto #2...

[HTTPS](https://en.wikipedia.org/wiki/HTTPS) isn't something fancy. Essentially, it encrypts the contents using TLS or SSL. You will need to have setup certification with a CA to verify that you are hosting a legit service. 

In our case, when you connect HA from public internet, you can verify that the HA you are connected to are indeed the one owned by you, not some hijacked website. 

### Setup a DNS record
To set it up, first, you will need to register a DNS, so that you can always resolve your home IP. I used Duck DNS, which is very easy to setup. You will need to register an account. 

Then, you can create a subdomain (something like `yourdomain.duckdns.org`), and you will receive a hash string. Use that to create a cron job on your host following [this](https://www.duckdns.org/install.jsp). It will periodically update the IP address on Duck DNS. To verify, you can type the following in a terminal:
```
host jsvpn.duckdns.org
```

### Reverse Proxy
Next, you will need to setup a reverse proxy. I used [nginx-proxy-manager](https://github.com/NginxProxyManager/nginx-proxy-manager), which runs as a docker container. Essentially, it receives external connections and redirect them to internal host(s) based on some rules.

It has a well-written [instruction](https://nginxproxymanager.com/setup/#full-setup-instructions). 

After installation, you can hop onto a web browser to login at `http://127.0.0.1:81` with default Admin User:

```
Email:    admin@example.com
Password: changeme
```
Then you can setup a proxy host
![nginx-proxy](/assets/images/2022/nginx-proxy-proxy.png){:width="700" }

and request a SSL certificate (default use [Let's Encrypt](https://letsencrypt.org/))

![nginx-proxy](/assets/images/2022/nginx-proxy-SSL.png){:width="700" }

Now the external connection is secured by a certificate, while the internal connect (from nginx to your HA host) is plain HTTP!

### Port forwarding
You will also need to setup the port forwarding in your router. The setup may differ by the type/brand of router. All you need to do is to map port 443 and 80 to the same ports on your host (the one running nginx).

![port-forward](/assets/images/2022/port-forwarding.png){:width="700" }

Note, port 80 is required for the program to register/renew SSL certificate. Otherwise, you will get some timeout error. (Don't ask me how long did it take for me to find out...)

### Setup HA's `http` add-on in `configuration.yaml`
Now the last step is to setup/add `http` in `configuration.yaml` by adding
```
http:
  use_x_forwarded_for: true 
  trusted_proxies: 
    - <IP of the reverse proxy>
```

Restart your HA and try it out!