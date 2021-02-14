class AttemptsController < ApplicationController

	def index
		if params[:category]=="all"
			@questions=Question.order('RANDOM()').limit(10)
		else
			@questions= Question.order('RANDOM()').where(["category_id IN (?) ", params[:quiz_category]]).limit(10)
		end
		@attempt=current_user.attempt.build
	end

	def show
		
	end

	def create
		@attempt = current_user.attempt.build(attempt_params)
    
        respond_to do |format|
          if @attempt.save
          	@id=current_user.attempt.last.id
            format.html { redirect_to controller: 'scores', action:'index', id:@id, notice: 'attempt was successfully created.' }
          else
            format.html { render :new }
          end
        end
	end

	private

    def attempt_params
      params.require(:attempt).permit(:q1,:q2,:q3,:q4,:q5,:q6,:q7,:q8,:q9,:q10,:ans1,:ans2,:ans3,:ans4,:ans5,:ans6,:ans7,:ans8,:ans9,:ans10)
    end

end
