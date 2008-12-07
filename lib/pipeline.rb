# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'plugins/files_loader'
require 'plugins/file_filter'
require 'plugins/mail_notifier'

class Pipeline
  def initialize
    @loader = FilesLoader.new
    @process = FileFilter.new
    @notifier = MailNotifier.new
  end
  
  def execute
    files = @loader.load
    ret = @process.execute(files)
    @notifier.notify(ret) if ret.size > 0
  end
end
