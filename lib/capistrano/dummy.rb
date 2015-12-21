load File.expand_path('../tasks/dummy.rake', __FILE__)

require 'capistrano/scm'

class Capistrano::Dummy < Capistrano::SCM

  def self.derp
    'Capistrano::Dummy loaded'
  end

  # The Capistrano default strategy for dummy. You should want to use this.
  module DefaultStrategy
    def test
      true
    end

    def check
      context.execute '/bin/true'
    end

    def clone
      true
    end

    def update
      true
    end

    def release
      true
    end

    def fetch_revision
      fetch(:branch)
    end
  end
end
