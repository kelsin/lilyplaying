require 'lilyplaying/current'

module LilyPlaying
  class User
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def current
      LilyPlaying::Current.new(LilyPlaying.client.user.get_recent_tracks(:user => name))
    end
  end
end
