include_recipe "firewall"

firewall_rule "test" do
end

firewall_rule_iptables "iptables" do
end

firewall_rule_ufw "uwf" do
end
