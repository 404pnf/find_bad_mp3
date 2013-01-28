# -*- coding: utf-8 -*-
require 'test/unit'
require_relative '../find_bad_mp3.rb'

class TestFindBadMp3 < Test::TestUnit::TestCase

  INPUT = './test.xml'
  OUTPUT = './test.result.txt'
  OUTPUT_STRING = "C:\\Users\\tian\\Desktop\\itest-专八不正常音频\\2011081616521502.mp3"
  def test_find_bad_mp3
    assert_equal  OUTPUT_STRING, (find_bad_mp3 INPUT, OUTPUT)
  end
  
end
  
  
