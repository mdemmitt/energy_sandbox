class EnergyController < ApplicationController
  def index
    @keys = $redis.keys
  end
end
