#!/bin/bash
ONLINE_VERSION=$(curl -Ls "https://api.github.com/repos/ptcry233/drama-for-nas/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
wget -NO /tmp/drama.sh https://github.com/ptcry233/drama-for-nas/releases/download/$ONLINE_VERSION/drama.sh && chmod +x /tmp/drama.sh && bash /tmp/drama.sh
