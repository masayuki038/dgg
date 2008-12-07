# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'filter'

class FileFilter < Filter::Base
  def execute(files)
    ret = []
    files.each do |f|
      idx = (f.content =~ /(Error message:)/)
      if idx
        lidx = f.content.index("\n\n", idx)
        ret << Model::Message.new(f.filename, f.content[idx...lidx])
      end
    end
    ret
  end
end

