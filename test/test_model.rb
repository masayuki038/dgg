#
# To change this template, choose Tools | Templates
# and open the template in the editor.


$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'model'

class ModelTest < Test::Unit::TestCase
  def test_accessor
    file = Model::Message.new('filename', 'content')
    assert_equal('filename', file.header)
    assert_equal('content', file.body)
  end
end
