module LilyPlaying
  class Current
    attr_reader :data

    def initialize(data)
      @data = data[0]
    end

    def playing?
      @data["nowplaying"]
    end

    def album
      (@data['album']['content'] || artist) if @data
    end

    def method_missing(meth, *args, &block)
      (@data[meth.to_s]['content'] || @data[meth.to_s]) if @data
    end

    def to_s
      "#{name} - #{artist}"
    end
  end
end
