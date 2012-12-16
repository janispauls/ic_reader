require "open-uri"
module ICReader
  class TitleReader
    def initialize args
      @uri = URI.parse args[:url]
      @interval = args[:interval] || 5
    end

    def run
      loop do
        response = @uri.read
        p response
        sleep @interval
      end
    end
  end
end
