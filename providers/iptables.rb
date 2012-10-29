include Chef::Mixin::ShellOut

action :enable do
  Chef::Log.info("#{@new_resource} enabled")
  package "iptables"

  #service "iptables" do
  #  action [:enable,:start]
  #end

  #service "ip6tables" do
  #  action [:enable,:start]
  #end
end

action :disable do
  Chef::Log.info("#{@new_resource} disabled")
  #service "iptables" do
  #  action [:disable,:stop]
  #end

  #service "ip6tables" do
  #  action [:disable,:stop]
  #end
end
