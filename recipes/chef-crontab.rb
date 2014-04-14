service "crond" do
    action [:enable, :start]
end

template "/etc/crontab" do
    source "crontab.chef.erb"
    mode "0644"
    owner "root"
    group "root"
    notifies :restart, "service[crond]", :immediately
end
