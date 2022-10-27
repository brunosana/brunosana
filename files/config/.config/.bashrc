# Personal area

export PATH=$PATH:~/.personal_bashs
export PATH=$PATH:~/apps/webstorm/bin
export PATH=$PATH:~/apps/golang/bin
export PATH=$PATH:~/apps/intellij/bin

alias voltz='cd /home/brunosana/voltz'
alias gosana='cd /home/brunosana/personal'
alias root='cd ~'
alias update='source /home/brunosana/.bashrc'




project_number=0
find=0
lspretty() {
    for f in $(ls $1);
    do
        echo '  -> ['$project_number']' $f;
        project_number=$(expr $project_number + 1)
    done
}

proj() {
    project_number=0
    echo "voltz"
    echo "*projects"
    lspretty  /home/brunosana/voltz/projects
    echo "*packages"
    lspretty /home/brunosana/voltz/packages
    echo "*personal"
    lspretty /home/brunosana/personal
}

fao() { # Fast Open
    project_number=0
    find=0
    openIfExists $1 /home/brunosana/voltz/projects
    openIfExists $1 /home/brunosana/voltz/packages
    openIfExists $1 /home/brunosana/personal
}

openIfExists() {
    if [ $find -eq 0 ];
    then
        for f in $(ls $2);
        do
            if [ $project_number -eq $1 ];
            then
                cd $2/$f
                code .
                find=1
                break;
            fi
            project_number=$(expr $project_number + 1)
        done

    fi
}