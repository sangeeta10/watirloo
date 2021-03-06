$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'watirloo/extension/object'
require 'watirloo/extension/watir_ducktape'
require 'watirloo/extension/watir_reflector'
require 'watirloo/browsers'
require 'watirloo/desktop'
require 'watirloo/locker'
require 'watirloo/page'

module Watirloo
  VERSION = File.exist?('VERSION') ? (File.read('VERSION')).strip : "VERSION undefined"
end

