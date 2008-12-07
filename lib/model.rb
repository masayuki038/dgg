# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
module Model
  class Base
  end

  class Message < Base
    attr_accessor :header, :body
    def initialize(h, b)
      @header = h
      @body = b
    end
    def format
<<BODY
#{@header}
message:
#{@body}

BODY
    end
  end
end
