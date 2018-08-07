arp-scan --interface=$1 --localnet | grep -i -o '[0-9A-F]\{2\}\(:[0-9A-F]\{2\}\)\{5\}' | while read -r line ; do
    wakeonlan $line
done