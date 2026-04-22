Amazon product page: [link](https://www.amazon.com/dp/B08TB8Z5HF)
Maybe user guide: [link](https://www.tp-link.com/us/user-guides/kl1xx_v2/)

I have three bulbs. Model is KL125P4.

Here are their WiFi SSIDs:
- TP-LINK_Smart Bulb_7B01
- TP-LINK_Smart Bulb_5E97
- TP-LINK_Smart Bulb_6E92

Their current MAC and IP addresses on my home network are:
- Shit: 3C-64-CF-DE-6E-92: 192.168.0.125
- Fuck: 3C-64-CF-DE-7B-01: 192.168.0.167
- Bitch: 3C-64-CF-DE-5E-97: 192.168.0.246

The Kasa app is pretty crappy. It has a feature for grouping lights, but it's very buggy. Better to control them individually.
The bulbs also routinely get disconnected from the app, such that they don't respond to app commands. Not sure if that's due to the bulb or the app software. Or maybe my WiFi network just isn't good enough for the bulbs.

I've tried using the Tapo app, which is compatible with Kasa devices, but it's basically the same thing.

I should probably figure out a different way to control these lights that is more reliable.

There is a standard for smart home devices called [Matter](https://csa-iot.org/all-solutions/matter/) ([Wikipedia](https://en.wikipedia.org/wiki/Matter_(standard))).
There is also a protocol called [MQTT](https://mqtt.org/) ([Wikipedia](https://en.wikipedia.org/wiki/MQTT)).

There is also an open source smart home automation software called [Home Assistant](https://www.home-assistant.io/) ([Wikipedia](https://en.wikipedia.org/wiki/Home_Assistant)).
Do I need a server for that though?

There's a similar service out there called [IFTTT](https://ifttt.com/) ([Wikipedia](https://en.wikipedia.org/wiki/IFTTT)).

IFTTT vs Home Assistant:
- [https://www.reddit.com/r/homeassistant/comments/bx6sem/new_person_question_on_ifttt_vs_ha/](https://www.reddit.com/r/homeassistant/comments/bx6sem/new_person_question_on_ifttt_vs_ha/)[https://www.reddit.com/r/homeassistant/comments/1afidte/anyone_using_ifttt_for_anything/](https://www.reddit.com/r/homeassistant/comments/1afidte/anyone_using_ifttt_for_anything/)Sounds like Home Assistant is the better investment. According to [this page](https://www.home-assistant.io/integrations/tplink/#supported-kasa-devices), Home Assistant should be compatible with my Kasa bulbs.


## Python API
There is a community-developed Python package for interacting with Kasa smart devices: [python-kasa](https://python-kasa.readthedocs.io/en/latest/index.html)

You need to install it into a Python environment via `pip install python-kasa`, after which point there should be a `kasa` executable available on your PATH.

I've specifically used [pipx](https://github.com/pypa/pipx) to install python-kasa, to make sure the application is available globally.


## Factory Reset
To switch which Wi-Fi network the bulbs connect to, you need to factory reset them, I think.

See instructions [here](https://www.tp-link.com/us/user-guides/kl1xx_v2/reset-your-smart-bulb).

See also [this page](https://www.tp-link.com/us/support/faq/2660/).

The directions aren't totally consistent, but for a soft reset (Wi-Fi settings only), I just need to turn the bulb off and on five times.

