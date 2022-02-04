mkdir wg
cd wg
umask 077 
wg genkey | tee sprivatekey | wg pubkey > spublickey
for n in 01 02 03
do
mkdir $n
cd $n
umask 077
wg genkey | tee cprivatekey | wg pubkey > cpublickey
wg genpsk > sharekey
cd .. 
done

