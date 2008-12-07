# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'record'

class RecordTest < Test::Unit::TestCase
  def test_initialize
    #assert(false, 'Assertion was false.')
    #flunk "TODO: Write test"
    # assert_equal("foo", bar)
    file = Record::File.new('filename', 'content')
    assert_equal('filename', file.filename)
    assert_equal('content', file.content)
  end
end
