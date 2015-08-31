template ".htpasswd" do
  path "#{node[:nginx][:dir]}/.htpasswd"
  source ".htpasswd.erb"
  owner "root"
  group "root"
  mode 0644
end
