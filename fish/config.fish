if status is-interactive
    # Commands to run in interactive sessions can go here
    if not set -q TMUX
        if tmux has-session -t base
            exec tmux attach-session -t base
        else
            exec tmux new-session -s base
        end
    end
    fastfetch --config $HOME/.config/fastfetch/custom.jsonc
end

#Custom aliases
alias stest="speedtest-go --unit=decimal-bytes"
alias nloadw="nload -u M wlo1"
alias pipad="wget http://ipecho.net/plain -O - -q ; echo"
alias ls="eza --icons"
alias ll="eza --icons -l --header --octal-permissions "
alias la="eza --icons -l --header --octal-permissions -a"
alias nload="nload -u M"
alias adios="shutdown -P now"
alias nv="nvim"
alias vim="nvim"
alias neofetch="fastfetch --config $HOME/.config/fastfetch/custom.jsonc"
alias ytm_collect="yt-dlp -f 'bestaudio' --extract-audio --embed-thumbnail --embed-metadata --audio-format 'mp3' -o '%(title)s'"
alias chkprog="watch -d grep -e Dirty: -e Writeback: /proc/meminfo"
alias spdl='spotdl --output \'{title}\''
alias yt_collect="yt-dlp --embed-metadata --embed-thumbnail -o '%(title)s'"
alias upspice="spicetify upgrade; spicetify restore backup apply"
alias i3lock="i3lock --ignore-empty-password --clock --date-str=\"%a %d/%m/%y\" --time-str=\"%H:%M:%S\" --radius 100 --ring-color=455a64 --blur=5 --indicator --bshl-color=f72217 --keyhl-color=3d62ff --separator-color=000000 --screen 1 --time-color=ffffff --date-color=ffffff"
alias ssh="TERM=xterm-256color /bin/ssh"
alias wireshark="/usr/bin/wireshark -style Adwaita-Dark"
alias pyinit="source venv/bin/activate.fish"
alias mvtmp="cd $(mktemp -d)"

#Custom Path Declarations:
set PATH /home/revenant/.spicetify /usr/local/sbin /usr/local/bin /usr/bin /home/revenant/.dotnet/tools /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl/ /home/revenant/.local/bin/ /home/revenant/Sources/scripts/
set CLASSPATH $CLASSPATH /home/revenant/Sources/Jar Files/

