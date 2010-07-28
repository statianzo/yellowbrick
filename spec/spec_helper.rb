require File.join(File.dirname(__FILE__), '..', 'boot.rb')

require 'spec/autorun'

# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
