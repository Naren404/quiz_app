class HomeController < ApplicationController
  def index
  	@categories=Category.order(:name)
  	@attempt=current_user.attempt.count()
  end
end
