require 'elasticsearch/extensions/test/cluster'

RSpec.configure do |config|
  config.before(:all, :elasticsearch) do
    WebMock.disable_net_connect!(allow_localhost: true)
    Elasticsearch::Extensions::Test::Cluster.start port: 9250 unless Elasticsearch::Extensions::Test::Cluster.running?(on: 9250)
  end

  config.after(:all, :elasticsearch) do
    Elasticsearch::Extensions::Test::Cluster.stop port: 9250 if Elasticsearch::Extensions::Test::Cluster.running?(on: 9250)
  end
end
