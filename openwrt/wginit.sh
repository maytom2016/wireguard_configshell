ser=network_wg
begin=$(sed -n "/config interface 'wg0'/=" $ser)
end=$(sed -n '$=' $ser)
echo $begin,$end
if [ ! -n "$begin" ]; then
  echo "no change!"
else
sed -i "${begin},${end}d" $ser
  sed -i '$d' $ser
  echo "changed!"
fi
