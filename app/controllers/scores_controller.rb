class ScoresController < ApplicationController

	def index
		@attempt=Attempt.find(params[:id])
		@attempted_questions = Question.all

		@score=@attempt.score.build
	end

	def show
		@attempt=Attempt.find(params[:id])
		@attempted_questions = Question.all
		@score=Score.where('attempt_id = ?', params[:id])
		@score_avg=Score.average(:attempt_score)
	end

	def create
		@attempt=current_or_guest_user.attempt.last
		@score = @attempt.score.build(score_params)
    	
        respond_to do |format|
          if @score.save
          	@user=current_or_guest_user
          	ScoremailerMailer.score_email(@user,@score,@attempt).deliver_now
          	@id=current_or_guest_user.attempt.last.id
            format.html { redirect_to controller: 'scores', action:'show', id:@id }
          else
            format.html { render :new }
          end
        end
	end

	private

    def score_params
      params.require(:score).permit(:attempt_score)
    end

end
