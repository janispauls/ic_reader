module ICReader
  class BaseNotifier
    def self.notify message
      p "#{message}"
    end

    def notify message
      self.class.notify message
    end
  end
end

