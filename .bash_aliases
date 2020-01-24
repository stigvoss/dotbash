alias lsa='ls -lha'
alias ..'=cd ../'
alias cls='clear'

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
