require "spec_helper"

module ICReader
  describe TitleParser do

    before do
      @data = File.read "spec/sample_data_1.xspf"
      @data2 = File.read "spec/sample_data_2.xspf"
    end

    describe "#parse" do
      it "returns title found in data" do
        title1 = "Ben Gibbard - Set Yourself On Fire"
        title2 = "Bedouin Soundclash - When The Night Feels My Song"

        TitleParser.new(@data).parse.should == title1
        TitleParser.new(@data2).parse.should == title2
      end
    end
  end
end
