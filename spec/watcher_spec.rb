require "spec_helper"

module ICReader
  describe Watcher do
    let(:watcher) { Watcher.new }
    let(:gn) { GrowlNotifier }
    let(:bn) { BaseNotifier.new }

    describe "initializing" do
      it "can be initialized with single notifier" do
        w = Watcher.new nil, nil, gn
        w.notify "test"
      end

      it "can be initialized with multiple notifiers" do
        w = Watcher.new nil, nil, [gn, bn]
        w.notify "test"
      end
    end
  end
end
