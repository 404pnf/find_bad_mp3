#! /usr/bin/env ruby
require 'crack'
require 'pp'

(puts "Usage: #{$0} input.xml output.txt"; exit;) unless ARGV.size == 2
DEBUG = nil

INPUTFILE = File.expand_path ARGV[0]
outputfile = File.expand_path ARGV[1]

def find_bad_mp3 input
  input = INPUTFILE
  hash =  Crack::XML.parse(File.read input)
  array_of_mp3 = hash['Mediainfo']['File']
  hash_of_bad_mp3 = array_of_mp3.reject { |i| i['track'].is_a? Array}
  mp3_filenames = hash_of_bad_mp3.collect { |i| i['track']['CompleteName'] }
end

mp3_filenames =  find_bad_mp3 INPUTFILE
p mp3_filenames if DEBUG # for test script

File.write(outputfile, mp3_filenames.join("\n"))



