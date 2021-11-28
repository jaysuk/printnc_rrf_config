# General

These are my config files and macros for using RRF on a printNC.  
I use RRF on an SKR Pro with external drivers so some of the names won't match up if using duet hardware.  
I also use the DWC from diabase [here](https://github.com/diabase/H-Series-Web-Control/tree/v3.3-dev) rather than the duet version.  
This allows me to use their version of paneldue with an external encoder for easy jogging. It can be found [here](https://github.com/diabase/H-Series-Pendant-Firmware).  

## Probing

I use 2 probes to setuop the work area.  
The first one is by [vers.by](https://vers.by/en/touch-probes/9-vers-pr.html). I use this to set the work material in X and Y by probing the left edge and lower edge. I then also probe the top of the work piece, the top of a touch probe for tool length setting and the top of the spoil board.  Then using a [cheap CNC touch plate](https://www.amazon.co.uk/s?k=cnc+touch+plate&crid=3I26WX6WAUHBO&sprefix=cnc+touch%2Caps%2C179&ref=nb_sb_ss_ts-doa-p_2_9) I then set the tool offset in relation to either the spoilboard or the top of the material.  