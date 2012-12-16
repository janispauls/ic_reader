require "open-uri"
module ICReader
  class TitleReader
    def initialize args
      @uri = URI.parse args[:url]
    end
    def run
      loop do
        puts "running"
        sleep 5
      end
    end
  end
end
