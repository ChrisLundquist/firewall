include_recipe "firewall"

firewall_rule "test" do
  port 13579
  source '10.0.0.0/8'
  direction :in
  interface 'eth0'
  action :allow
end

