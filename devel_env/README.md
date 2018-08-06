# XPS 9370

## Ubuntu 18.04

To get it deep sleep during suspend (bluetooth may not work after waking up tho):

1. cat /sys/power/mem_sleep
   1. Does it say - [s2idle] deep ?
   1. That means it's not going into deep sleep
1. sudo journalctl | grep "PM: suspend" | tail -2
   1. Does it say - PM: suspend entry (s2idle) ?
   1. Confirms that it's not going into deep sleep
1. sudo -H gedit /etc/default/grub
   1. Replace - GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" ...with - GRUB_CMDLINE_LINUX_DEFAULT="quiet splash mem_sleep_default=deep"
   1. Then - sudo grub-mkconfig -o /boot/grub/grub.cfg
      1. ... to regenerate your grub config