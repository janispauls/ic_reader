module ICReader
  class Watcher

    def initialize reader, interval, notifier
      @reader = reader
      @interval = interval
      @notifier = notifier
      @last_data = ""
    end

    def run
      loop do
        data = @reader.read
        notify data
        sleep @interval
      end
    end

    def notify data
      unless @last_data == data
        @last_data = data
        @notifier.notify data
      end
    end
  end
end
