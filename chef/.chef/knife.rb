current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "pklingemann"
client_key               "#{current_dir}/pklingemann.pem"
validation_client_name   "articulate-validator"
validation_key           "#{current_dir}/articulate-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/articulate"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../code"]
