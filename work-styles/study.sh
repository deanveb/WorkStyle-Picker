# social tab
i3-msg "workspace 4; exec firefox https://chat.zalo.me/ https://www.messenger.com/e2ee/t/6743895422399881/ https://www.youtube.com/"
sleep 1
# main work workspace
i3-msg "workspace 1; exec firefox"
# docs tab
i3-msg "workspace 2; exec i3-sensible-terminal"
# misc tab for communicating with computer
i3-msg "workspace 3; exec nemo"
# resekkkt
i3-msg "workspace 4"

killall plank

exit
