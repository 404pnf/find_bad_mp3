require 'test/unit'
require_relative '../find_bad_mp3.rb'

class TestFindBadMp3 < Test::Unit::TestCase
  DEBUG = true
  #EXPECTED = 'C:\Users\tian\Desktop\itest-专八不正常音频\2011081616521502.mp3'
  def test_find_bad_mp3
    assert_equal EXPECTED, find_bad_mp3('test.xml', 'rst.txt')
  end
end 
