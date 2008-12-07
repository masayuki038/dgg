#
# To change this template, choose Tools | Templates
# and open the template in the editor.


$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'notifier'
require 'model'

class NotifierTest < Test::Unit::TestCase
  def test_create_body
    @notifier = Notifier::Base.new
    list = []
    list << Model::Message.new('hoge', 'foo')
    list << Model::Message.new('bar', 'hoge')
    ret = @notifier.create_body(list)
    result = <<EOF
hoge
message:
foo

bar
message:
hoge

EOF
    assert_equal(result, ret)
  end
end
