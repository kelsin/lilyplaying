module LilyPlaying
  class Current
    attr_reader :data

    def initialize(data)
      current = data[0]
      if current["nowplaying"]
        @data = current
      end
    end

    def album
      @data.nil? ? "No Current Album" : (@data['album']['content'] || artist)
    end

    def method_missing(meth, *args, &block)
      @data.nil? ? "No Current #{meth.to_s.capitalize}" : (@data[meth.to_s]['content'] || @data[meth.to_s])
    end
  end
end
