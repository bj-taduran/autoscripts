# Setting Up My UBUNTU Shell Environment

# tools shortcut

if [ -d "$HOME/tools" ]; then
    idea_folder=$(find "$HOME/tools" -type d -name 'idea*' -print -quit)
    if [ -z "$idea_folder" ]; then
        echo "There is no IntelliJ IDEA folder inside the 'tools' folder."
    else
        idea_sh=$(find "$idea_folder" -type f -name 'idea.sh' -print -quit)
        if [ -n "$idea_sh" ]; then
            alias idea="nohup bash $idea_sh > /dev/null 2>& 1 &"
        else
            echo "The 'idea.sh' file is not found inside the IntelliJ IDEA folder."
        fi
    fi
else
    echo "There is no 'tools' folder found."
fi
