include Chef::Mixin::ShellOut

action :enable do
  Chef::Log.info("#{@new_resource} enabled")
end

action :disable do
  Chef::Log.info("#{@new_resource} disabled")
end
