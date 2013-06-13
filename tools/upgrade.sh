current_path=${current_path/ /\\ }
printf '\033[0;34m%s\033[0m\n' "Upgrading Oh My Zsh"
cd "$ZSH"

# Pull in origin master, and merge upstream master
( cd $ZSH && git pull origin master )
( cd $ZSH && git fetch upstream )
( cd $ZSH && git merge upstream/master )

echo -e "\033[0;32m"'         __                                     __   '"\033[0m"
echo -e "\033[0;32m"'  ____  / /_     ____ ___  __  __   ____  _____/ /_  '"\033[0m"
echo -e "\033[0;32m"' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '"\033[0m"
echo -e "\033[0;32m"'/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '"\033[0m"
echo -e "\033[0;32m"'\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '"\033[0m"
echo -e "\033[0;32m"'                        /____/                       '"\033[0m"
echo -e "\033[0;34mHooray! Oh My Zsh has been updated and/or is at the current version.\033[0m"
echo -e "\033[0;34mTo keep up on the latest, be sure to follow Oh My Zsh on twitter: \033[1mhttp://twitter.com/ohmyzsh\033[0m"
cd "$current_path"
