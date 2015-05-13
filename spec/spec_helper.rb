ENV['RACK_ENV'] = 'test'

require 'bundler/setup'
Bundler.require :default,:test
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }


RSpec.configure do |config|
  config.before(:each) do
    Person.all().each() do |person|
      person.destroy()
    end
    Relationship.all().each() do |relation|
      relation.destroy()
    end
  end
end
