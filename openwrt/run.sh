cp /etc/config/network ./network_wg
sh wginit.sh
keyfilePath=./wg

if [[ ! -d "$keyfilePath" ]]; then

echo "wg path isn't exist,create key file now"
sh generatekey.sh


else

echo "wg path exist"

fi

echo "seting wireguard server config now"
sh configwg-s.sh
echo "finished set up wireguard server! beginning seting up wireguard peers"
sh configwg-c.sh
echo "finished set up wireguard peers,you can get configuration file from wg floder"
sh addwg0_firewallrule.sh
cp /etc/config/network /root/network_backup
cp  network_wg /etc/config/network
echo "finished all works,you need reboot to apply configs"