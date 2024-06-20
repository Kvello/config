set PKG_CONFIG_PATH $PKG_CONFIG_PATH:/usr/local/lib/pkgconfig

export PKG_CONFIG_PATH
(cat ~/.cache/wal/sequences &)

export _JAVA_AWT_WM_NONREPARENTING=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/markus/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/markus/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/markus/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/markus/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export TERM=xterm-256color
# ROS 2
source /opt/ros/humble/setup.bash

export ROS_DOMAIN_ID=30
export ROS_LOCALHOST_ONLY=1
export TURTLEBOT3_MODEL=burger
source /usr/share/gazebo/setup.sh


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export _colcon_cd_root=/opt/ros/humble/
source /usr/share/colcon_cd/function/colcon_cd.sh
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash

fish
# Should probably just use fish as default shell
# chsh -s /usr/bin/fish
# But for now, this is good
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
