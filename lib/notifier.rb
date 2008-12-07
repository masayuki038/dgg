# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'net/smtp'
require 'nkf'

module Notifier
  class Base
    def create_body(results)
      ret = ""
      results.each do |e|
        ret += e.format
      end
      ret
    end
  end
end
