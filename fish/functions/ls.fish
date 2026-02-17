function ls
    command eza --group-directories-first --icons --all
end

function lsi
    command eza --group-directories-first --icons --all -l
end

function lsl
    command eza --group-directories-first --icons --all -T --ignore-glob=".git|node_modules" -L 2
end
