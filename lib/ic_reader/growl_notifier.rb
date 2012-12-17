module ICReader
  class GrowlNotifier

    def self.notify message
      Growl.notify message
    end

  end
end
