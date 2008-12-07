# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'model'

class FileModel < Model::Base
  attr_accessor :filename, :content
  def initialize(f, c)
    @filename = f
    @content = c
  end
end


