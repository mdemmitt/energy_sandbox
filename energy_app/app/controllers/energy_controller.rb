class EnergyController < ApplicationController
  def index
    keys = $redis.keys
    @stringKeys = []
    @hashKeys = []
    @types = []
    keys.each do |key|
      type = $redis.type key
      @types << type
      if type.eql? "string"
        @stringKeys << key
      elsif type.eql? "hash"
        @hashKeys << key
      end
    end
  end
end
