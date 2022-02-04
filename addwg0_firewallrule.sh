sed -i "s/option network 'vpn0'/option network 'vpn0 wg0'/" /etc/config/firewall
vpn0=$(sed -n "/vpn0 wg0/=" /etc/config/firewall)
lan=$(sed -n "/lan wg0/=" /etc/config/firewall)
if [ ! -n "$vpn0" ]; then
sed -i "s/option network 'vpn0'/option network 'vpn0 wg0'/" /etc/config/firewall
fi
if [ ! -n "$vpn0" ]; then
sed -i "s/option network 'lan'/option network 'lan wg0'/" /etc/config/firewall
fi
rule=$(sed -n "/192.168.100.0/=" /etc/firewall.user)
if [ ! -n "$rule" ]; then
echo "iptables -t nat -A POSTROUTING -s 192.168.100.0/24 -o br-lan - MASQUERADE" >>/etc/firewall.user
fi
