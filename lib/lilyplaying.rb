require 'lilyplaying/version'
require 'lastfm'
require 'safe_yaml'

require 'lilyplaying/user'
require 'lilyplaying/current'

module LilyPlaying
  def self.config
    @@config ||= YAML.safe_load_file(File.expand_path("~/.lilyplaying"))
  end
  
  def self.client
    @@client ||= Lastfm.new(config['api']['key'], config['api']['secret'])
  end
  
  def self.session
    @@session = client.auth.get_session(:token => config['api']['token'])['key']
  end
  
  def self.user
    LilyPlaying::User.new(config['user'])
  end
end
