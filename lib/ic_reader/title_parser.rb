require "nokogiri"

module ICReader
  class TitleParser

    def initialize data
      @data = data
    end

    def parse
      doc = Nokogiri::XML(@data)
      title = doc.at_css("track title").text
      title
    end
  end
end
