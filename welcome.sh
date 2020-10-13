if [ ! -t 0 ]; then
  urxvt -e sh -c "$0; bash" "$@"
  exit 0
fi


write(){
  for i in $(seq 0 ${#mess})
  do
    sleep 0.1
    if [[ ${mess:$i:1} =~ [^a-zA-Z0-9,:.] ]] 
    then
      printf \\040
    else
      ( printf ${mess:$i:1} > /dev/tty ) >& /dev/null
    fi
  done
  echo
  sleep 0.3
}

mess="Welcome aboard $(whoami)."
write
echo

mess="Today is $(LANG=en_us_88591;date +'%A, %e %B %Y')"
write

mess="Time: $(date +'%H:%M')"
write
echo
