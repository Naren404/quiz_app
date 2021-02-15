class HomeController < ApplicationController
  def index
  	@categories=Category.order(:name)
  	if !current_user.nil?
  		@attempt=current_user.attempt.count()
  		@tot_attempt = Attempt.count()
  		@tot_question = Question.count()
  		@tot_categories = Category.count()
  	else
  		@attempt=0
  	end
  end
end
