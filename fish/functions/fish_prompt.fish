function fish_prompt
        set -l symbol ' $ '
        set -l color $fish_color_cwd
        if fish_is_root_user
                set symbol ' # '
                set -q fish_color_cwd_root
                and set color $fish_color_cwd_root
        end
    
        if test $hostname != "BruhMachine"
                echo -n "$USER@$hostname "
        else
                echo -n "$USER "
        end
    
        set_color $color
        echo -n $PWD
        set_color normal
    
        echo -n $symbol
end
