function channelId
    echo $(curl -s $argv | grep -o 'https://www\.youtube\.com/channel/[a-zA-Z0-9_-]*' | uniq | awk -F/ '{print "https://www.youtube.com/feeds/videos.xml?channel_id="$5}')
end
