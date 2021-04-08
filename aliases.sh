alias ls='ls -lhA'
alias ..'=cd ../'
alias cls='clear'
alias fm='nautilus .'
alias files='nautilus .'
alias explorer='nautilus .'

gi() 
{ 
   curl -L -s https://www.gitignore.io/api/$@
}

qr()
{
   qrencode -t UTF8 $1 | cat
}

randaddr()
{
   echo "$(echo "$RANDOM$(date +%s)" | md5sum | cut -c -32)@$CATCHALL_DOMAIN"
}
