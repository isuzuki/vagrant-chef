default['golang']['version'] = '1.3.1'
default['golang']['platform'] = 'amd64'
default['golang']['filename'] = "go#{node['golang']['version']}.#{node['os']}-#{node['golang']['platform']}.tar.gz"
