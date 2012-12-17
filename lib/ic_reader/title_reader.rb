require "open-uri"

module ICReader
  class TitleReader
    def initialize args
      @uri = URI.parse args[:url]
    end

    def read
      response = @uri.read
      TitleParser.new(response).parse
    end
  end
end
