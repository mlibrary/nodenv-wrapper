require_relative "wrapper/version"

module Nodenv
  module Wrapper
    NODE_VERSION = '8.6.0'

    PATH = File.expand_path(
      File.join(%W(.. .. .. ext nodenv versions #{NODE_VERSION} bin)),
      __FILE__
    )

    NPM  = File.join(PATH, 'npm')
    NODE = File.join(PATH, 'node')

    def self.export_path
      ENV['PATH'] = [PATH, ENV['PATH']].join(File::PATH_SEPARATOR)
    end
  end
end
