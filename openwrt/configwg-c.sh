for n in 1 2 3
do
ser=network_wg
conf=./wg/0$n.conf
c=$(($n+1))
cip=192.168.100.$c/32
cpub=$(cat ./wg/0$n/cpublickey)
cpri=$(cat ./wg//0$n/cprivatekey)
cshare=$(cat ./wg/0$n/sharekey)
spub=$(cat ./wg/spublickey)
seripport=$(cat ./ipport.conf)

echo >>$ser
echo config wireguard_wg0>>$ser
echo "        option public_key "$cpub>>$ser
echo "        list allowed_ips '"$cip"'">>$ser
echo "        option route_allowed_ips '1'">>$ser
echo "        option preshared_key "$cshare>>$ser
echo "        option persistent_keepalive '25'">>$ser

echo [Interface]>$conf
echo Address = $cip >>$conf
echo PrivateKey = $cpri>>$conf
echo DNS = 114.114.114.114 >>$conf
echo [Peer]>>$conf
echo PublicKey = $spub>>$conf
echo PresharedKey = $cshare>>$conf
echo AllowedIPs = 0.0.0.0/0>>$conf
echo Endpoint = $seripport>>$conf
echo "PersistentKeepalive = 25">>$conf

done
