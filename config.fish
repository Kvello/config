if status is-interactive
    bass source ~/.fishrc
    set fish_greeting
    # Commands to run in interactive sessions can go here
end
set -g fish_color_command ebdbb2 
set -g fish_color_error d75f5f
set -g tide_character_color afaf00
set -g tide_character_color_failure d75f5f
set -g tide_left_prompt_items os pwd git
set -g tide_left_prompt_frame_enabled true
set -g tide_left_prompt_prefix ''
set -g tide_left_prompt_suffix 
set -g tide_prompt_pad_items true
set -g tide_left_prompt_separator_diff_color 
set -g tide_left_prompt_separator_same_color 
set -g tide_pwd_bg_color 83adad
set -g tide_git_bg_color ffaf00
set -g tide_git_color_branch 262626
set -g tide_git_bg_color_unstable d75f5f
set -g tide_git_bg_color_urgent d75f5f
set -g tide_os_bg_color ebdbb2
set -g tide_pwd_color_dirs ebdbb2
set -g tide_pwd_color_anchors ebdbb2
