
IP_CIDR_VALID_REGEX = /\b(?:\d{1,3}\.){3}\d{1,3}\b(\/[0-3]?[0-9])?/

actions :allow, :deny, :reject

attribute :port,      :kind_of => Integer
attribute :protocol,  :kind_of => Symbol, :equal_to => [ :udp, :tcp ]
attribute :direction, :kind_of => Symbol, :equal_to => [ :in, :out ]
attribute :interface, :kind_of => String
attribute :logging,   :kind_of => Symbol, :equal_to => [ :connections, :packets ]
attribute :source,      :regex => IP_CIDR_VALID_REGEX
attribute :destination, :regex => IP_CIDR_VALID_REGEX
attribute :dest_port, :kind_of => Integer
attribute :position,  :kind_of => Integer

def initialize(name, run_context=nil)
  super
  set_platform_default_providers
  @action = :reject
end

private
def set_platform_default_providers
  if node.platform_family?(['debian', 'rhel'])
    Chef::Platform.set(
      :platform => node.platform.to_sym,
      :resource => :firewall,
      :provider => Chef::Provider::FirewallRuleIptables
    )
  end
end
