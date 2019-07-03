require_relative "wrapper/version"

module Nodenv
  module Wrapper
    NODE_VERSION = '8.6.0'
    NPM_PATH  = "ext/nodenv/versions/#{NODE_VERSION}/bin/npm"
    NODE_PATH = "ext/nodenv/versions/#{NODE_VERSION}/bin/node"

    NPM  = File.expand_path("../../../#{NPM_PATH}", __FILE__)
    NODE = File.expand_path("../../../#{NODE_PATH}", __FILE__)
  end
end
