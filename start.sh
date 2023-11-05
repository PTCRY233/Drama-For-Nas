#!/bin/bash
ONLINE_VERSION=$(curl -Ls "https://api.github.com/repos/ptcry233/drama-for-nas/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
wget -NO /tmp/setupd.sh https://github.com/ptcry233/drama-for-nas/releases/download/$ONLINE_VERSION/setupd.sh && chmod +x /tmp/setupd.sh && bash /tmp/setupd.sh
