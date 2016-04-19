## Info on ordering of firewall states

In order to get Firewall states to execute in the correct order, the appropriate rules should be assigned the following numbers with '- order: x'.
This ensures that specific rules are in particular places in the chain (i.e. global reject or any traffic should be applied last, right? :p)

Firewall states are reserved per the following table:

20: loopback interface rules - e.g. `iptables -I INPUT -i lo -j ACCEPT`
21: icmp rules - e.g. `iptables -I INPUT -p icmp --fragment -j DROP
22: connection state rules - e.g. `iptables -I INPUT -m state --state ESTABLISHED -j ACCEPT`
23: Management rules - e.g. `iptables -I INPUT -s 119.47.119.238,119.47.119.239 -p tcp --dport 22 -j ACCEPT
24: unassigned
25: customer package rules - e.g. `iptables -I INPUT -p tcp --dports 80,443 -j ACCEPT`
25: unassigned
26: unassigned
27: default allow rules - e.g. `iptables -I OUTPUT -j ACCEPT`
28: default reject rules - e.g. `for i in INPUT FORWARD OUTPUT; do iptables -I $i -j REJECT; done`
29: denial/removal rules - Rules to ensure certain rules don't exist, for instance, global ssh rules are deleted here

