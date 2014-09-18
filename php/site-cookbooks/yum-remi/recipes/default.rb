yum_repository 'remi' do
  description "Les RPM de remi pour Enterprise Linux #{node['platform_version']} - $basearch"
  mirrorlist  "http://rpms.famillecollet.com/enterprise/#{node['platform_version'].to_i}/remi/mirror"
  enabled     true
  gpgcheck    true
  gpgkey      'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  fastestmirror_enabled true
  action      :create
end
