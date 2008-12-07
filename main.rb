# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
$LOAD_PATH << File.join(File.dirname(__FILE__), '.')
$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

require 'pipeline'
require 'config'

p = Pipeline.new.execute

