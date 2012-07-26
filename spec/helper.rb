require 'simplecov'
SimpleCov.start do
  add_filter 'spec'
end
require 'rspec'
require 'webmock/rspec'
require 'buffer'

# Taken from https://github.com/sferik/twitter/blob/master/spec/helper.rb
# for stubbing & mocking HTTP requests

def endpoint
  'https://api.bufferapp.com/1/'
end

def a_get(path)
  a_request(:get, endpoint + path)
end

def a_post(path)
  a_request(:post, endpoint + path)
end

def stub_get(path)
  stub_request(:get, endpoint + path)
end

def stub_post(path)
  stub_request(:post, endpoint + path)
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end