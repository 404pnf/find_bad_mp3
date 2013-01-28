require 'crack'
require 'pp'

inputfile = File.expand_path ARGV[0]
outputfile = File.expand_path ARGV[1]

(puts "Usage: #{0} input.xml output.txt"; exit;) unless ARGV.size == 2

hash =  Crack::XML.parse(File.read inputfile)

array_of_mp3 = hash['Mediainfo']['File']

hash_of_bad_mp3 = array_of_mp3.reject { |i| i['track'].is_a? Array}

mp3_filenames = hash_of_bad_mp3.collect { |i| i['track']['CompleteName'] }

File.write(outputfile, mp3_filenames.join("\n"))



