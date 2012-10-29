actions :enable, :disable

attribute :log_level, :kind_of => Symbol, :equal_to => [:low, :medium, :high, :full], :default => :low

def initialize(name, run_context=nil)
  super
  set_platform_default_providers
  @action = :enable
end

private
def set_platform_default_providers
  if node.platform_family?(['debian', 'rhel'])
    Chef::Platform.set(
      :platform => node.platform.to_sym,
      :resource => :firewall,
      :provider => Chef::Provider::FirewallIptables
    )
  end
end
