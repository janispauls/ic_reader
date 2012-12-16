require_relative "./lib/ic_reader"

url = ARGV[0]

reader = ICReader::TitleReader.new url: url, notifier: ICReader::GrowlNotifier
reader.run
