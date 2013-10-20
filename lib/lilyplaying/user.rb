require 'lilyplaying/current'

module LilyPlaying
  class User
    attr_reader :data

    def initialize()
      @data = LilyPlaying.client.call("currentUser", :extras => "lastSongPlayed")['result']
    end

    def current
      LilyPlaying::Current.new(@data["lastSongPlayed"])
    end
  end
end
