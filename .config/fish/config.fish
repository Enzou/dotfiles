powerline-daemon -q

set fish_function_path $fish_function_path "/usr/lib/python3.6/site-packages/powerline/bindings/fish"
powerline-setup

set -gx PATH $PATH /home/me/.npm-global/bin


function adbpic 
    adb shell screencap -p | sed 's/\r$//' > $argv.png
end
