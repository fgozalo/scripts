netsh wlan show profiles|grep All|sort -u|while read a b c d e; do echo $e; done > lista.txt
dos2unix lista.txt
cat lista.txt | while read a
do
echo $a ---------------------
netsh wlan show profile name="$a" key=clear|grep -i content
done
