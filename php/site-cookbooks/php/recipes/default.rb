%w{php55u}.each do |p|
  package p do
    action :install
  end
end

template "dev.ini" do
  path "/etc/php.d/dev.ini"
  source "dev.ini.erb"
  owner "root"
  group "root"
  mode 0644
end
