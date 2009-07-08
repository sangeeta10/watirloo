$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'watirloo/watir_reflector'
require 'watirloo/watir_ducktape'
require 'watirloo/browsers'
require 'watirloo/desktop'
require 'watirloo/locker'
require 'watirloo/page'

module Watirloo
  VERSION = '0.0.4' # May2009
end
  