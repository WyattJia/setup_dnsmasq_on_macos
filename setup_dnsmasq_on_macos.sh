
# Install dnsmasq 

brew install dnsmasq

# Configure resolver

[ -d /etc/resolver ] || sudo mkdir -v /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dnsmasq'

# configuring dnsmasq

sudo mkdir -p $(brew --prefix)/etc/
cat > $(brew --prefix)/etc/dnsmasq.conf <<-EOF
listen-address=127.0.0.1
address=/.vbox/127.0.0.1

# keep nameserver order of resolv.conf
strict-order
EOF
