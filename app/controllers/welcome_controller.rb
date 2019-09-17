class WelcomeController < ApplicationController
  def index
  	@footwears = Footwear.all.count
  	@providers = Provider.all.count
  end
end
