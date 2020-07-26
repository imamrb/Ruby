=begin
FOOD FINDER in Ruby
Author: Imam Hossain
=end

APP_ROOT = File.dirname(__FILE__)
$:.unshift(File.join(APP_ROOT, 'lib'))

require 'guide'

guideObj =  Guide.new('restaurants.txt')
guideObj.launch!