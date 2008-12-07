# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'loader'
require 'plugins/file_model'

class FilesLoader < Loader::Base
  def load
    files = []
    Dir.entries(Dirname).each do |e|
      #puts e
      if(e.length > 2)
        open(Dirname + e) do |f|
          cont = FileModel.new(e, f.read)
          files << cont
        end
      end
    end
    files
  end
end

