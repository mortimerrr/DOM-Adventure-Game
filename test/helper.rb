require 'test/unit'
require 'pry-byebug'
require 'nokogiri'

class Test::Unit::TestCase
	def ___
    raise UnfinishedQuestion.new
  end
end

class UnfinishedQuestion < Exception
  def message
    line_number = backtrace[1].scan(/\d+/).first
    "You need to replace the ___ with an answer in your test on line #{line_number}"
  end
end