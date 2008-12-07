#
# To change this template, choose Tools | Templates
# and open the template in the editor.
require 'loader'
require 'notifier'

FilesLoader::Dirname = "PATH_TO_DIRECTORY"

MailNotifier::Title = "(title)"
MailNotifier::Server = "localhost"
MailNotifier::From = "from@example.com"
MailNotifier::To = "to@example.com"
MailNotifier::Header = <<HEADER
From: #{MailNotifier::From}
To: #{MailNotifier::To}
Subject: #{MailNotifier::Title}
Date: #{Time.now.strftime "%a, %d %b %Y %X +0900"}
Message-Id: <#{Time.now.to_i}>

HEADER

