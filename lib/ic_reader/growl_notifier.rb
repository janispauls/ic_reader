require "growl"

module ICReader
  class GrowlNotifier
    def initialize
      @growl = Growl.new
    end

    def notify message
      Growl.notify message
    end
  end
end
