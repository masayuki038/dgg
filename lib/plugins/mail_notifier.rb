# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'notifier'

class MailNotifier < Notifier::Base
  
  def notify(ret)
    message = Header + create_body(ret)
    message = NKF.nkf("-j -m0", message)
    Net::SMTP.start(Server) do |smtp|
      smtp.send_message(message, From, To)
      smtp.finish
    end
  end
end
