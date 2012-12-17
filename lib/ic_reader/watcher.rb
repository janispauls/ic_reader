module ICReader
  class Watcher

    def initialize reader, interval, notifiers
      @reader = reader
      @interval = interval
      @notifiers = [notifiers].flatten
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
        @notifiers.each { |n| n.notify data }
      end
    end
  end
end
