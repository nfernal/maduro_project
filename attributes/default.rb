default['iptables']['rules'] = [{ 'rule' => '-A INPUT -i lo -j ACCEPT', 'comment' => nil },
                                { 'rule' => '-A INPUT -f -j ACCEPT', 'comment' => nil },
                                { 'rule' => '-A INPUT -p icmp -j ACCEPT', 'comment' => nil },
                                { 'rule' => '-A INPUT -p tcp -m tcp --dport 22 -j ACCEPT', 'comment' => '# SSH inbound' },
                                { 'rule' => '-A INPUT -p tcp -m tcp --dport 80 -j ACCEPT', 'comment' => '# HTTP inbound' },
                                { 'rule' => '-A OUTPUT  -p icmp -j ACCEPT', 'comment' => nil },
                                { 'rule' => '-A OUTPUT  -p udp  -j ACCEPT', 'comment' => nil },
                                { 'rule' => '-A OUTPUT  -p tcp  -j ACCEPT', 'comment' => nil }]
