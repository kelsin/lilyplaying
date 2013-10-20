module LilyPlaying
  class Current
    attr_reader :data

    def initialize(data)
      @data = data
    end

    def method_missing(meth, *args, &block)
      @data[meth.to_s]
    end

    def to_s
      "#{name} - #{artist}"
    end
  end
end
