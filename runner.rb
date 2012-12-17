require_relative "./lib/ic_reader"
require_relative "./lib/ic_reader/title_reader"

url = ARGV[0]

reader = ICReader::TitleReader.new url: url

watcher = ICReader::Watcher.new reader, 5, ICReader::GrowlNotifier
watcher.run
