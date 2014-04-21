require 'stripe'
require 'redis'

require 'cunningham/version'
require 'cunningham/api_resource'

Stripe::APIResource.extend Cunningham::APIResource::ClassMethods

module Cunningham
  class << self
    def lookup_object id
      redis.get id
    end

    def store_object object
      redis.set object.id, object
    end

    def redis
      @redis ||= Redis.new
    end
  end
end
