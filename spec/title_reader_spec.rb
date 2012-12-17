require "spec_helper"

module ICReader
  describe TitleReader do
    let(:url) { "http://test@test.com:2222/mount" }
    let(:tr) { TitleReader.new url: url  }

    subject { tr }

    it { should respond_to :read }

    describe "initialization" do
      before do
        @uri = URI.parse url
      end
      it "can be created" do
        tr.should_not be nil
      end
    end

  end
end
