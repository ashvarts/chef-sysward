databag = Chef::EncryptedDataBagItem.load("credentials", "sysward")

api_key = databag["api_key"]

execute "Install Sysward" do
  command "curl -sSL https://raw.githubusercontent.com/sysward/sysward-agent/master/install.sh | API_KEY=#{api_key} bash"
end
