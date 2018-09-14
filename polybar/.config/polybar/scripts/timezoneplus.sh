#!/bin/bash

# <bitbar.title>Timezones+</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Aaron Edell</bitbar.author>
# <bitbar.author.github>aaronedell</bitbar.author.github>
# <bitbar.desc>Rotates current time through four common timezones </bitbar.desc>
# <bitbar.image>http://i.imgur.com/Y4nhdZo.png</bitbar.image>
# <bitbar.dependencies>Bash GNU AWK</bitbar.dependencies>

echo -n "🇺🇸 MPK " ; TZ=":US/Pacific" date +'%l:%M %p'
echo -n "🇮🇪 DUB " ; TZ=":Europe/Dublin" date +'%l:%M %p'
echo -n "🇸🇬 SG" ; TZ=":Asia/Hong_Kong" date +'%l:%M %p'
