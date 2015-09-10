databag = Chef::EncryptedDataBagItem.load("credentials", "sysward")

api_key = databag["api_key"]

execute "Install Sysward" do
  command "curl -sSL https://sysward.com/install.sh | API_KEY=#{api_key} bash"
end
