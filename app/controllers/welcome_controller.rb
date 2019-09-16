class WelcomeController < ApplicationController
  def index
  	@footwears = Footwear.all.count
  end
end
