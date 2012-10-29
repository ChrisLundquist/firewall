include_recipe "firewall"

firewall_iptables "enable" do
  action :enable
end

firewall_rule_iptables "test" do
  port 13579
  source '10.0.0.0/8'
  direction :in
  interface 'eth0'
  action :allow
end

