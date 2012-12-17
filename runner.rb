require_relative "./lib/ic_reader"
require_relative "./lib/ic_reader/title_reader"
require "redis"

url = ARGV[0]

reader = ICReader::TitleReader.new url: url

# growl example
#watcher = ICReader::Watcher.new reader, 5, ICReader::GrowlNotifier

# redis example
watcher = ICReader::Watcher.new reader, 5, ICReader::RedisPubSubNotifier.new(Redis.new, "channel_one")

watcher.run
