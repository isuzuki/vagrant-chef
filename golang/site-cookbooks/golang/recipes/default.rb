# fetch golang tar
remote_file "/tmp/#{node['golang']['filename']}" do
  source "http://storage.googleapis.com/golang/#{node['golang']['filename']}"
  owner 'root'
  mode 0644
end

# install golang
bash 'install golang' do
  not_if 'which go'
  code <<-EOL
    tar -C /usr/local/ -xzf /tmp/#{node['golang']['filename']}
  EOL
end

template '/etc/profile.d/golang.sh' do
  source 'golang.sh.erb'
  owner 'root'
  group 'root'
  mode 0755
end
