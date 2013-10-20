require 'lilyplaying/version'
require 'rubygems'
require 'rdio'
require 'safe_yaml'

require 'lilyplaying/user'
require 'lilyplaying/current'

module LilyPlaying
  def self.config
    @@config ||= YAML.safe_load_file(File.expand_path("~/.lilyplaying"))
  end
  
  def self.client
    @@client ||= Rdio.new([config['consumer']['key'], config['consumer']['secret']], [config['access']['token'], config['access']['secret']])
  end
  
  def self.user
    LilyPlaying::User.new
  end
end
