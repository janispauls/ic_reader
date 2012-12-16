require "open-uri"

module ICReader
  class TitleReader
    def initialize args
      @uri = URI.parse args[:url]
      @interval = args[:interval] || 5
      @notifier = args[:notifier] || BaseNotifier
      @last_title = ""
    end

    def run
      loop do
        response = @uri.read
        title = TitleParser.new(response).parse
        notify title
        sleep @interval
      end
    end

    def notify title
      unless @last_title == title
        @last_title = title
        @notifier.notify title
      end
    end
  end
end
