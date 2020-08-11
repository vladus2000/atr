cd /downloads
#{ cat config; tail -f /dev/null; } | python /home/evil/atr/main.py > out 2> out2
{ cat config; tail -f /dev/null; } | python /home/evil/atr/atr_cmd.py > out 2> out2
