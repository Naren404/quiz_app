class QuestionsController < ApplicationController

	before_action :set_question, only: [:update, :destroy]

	def index
		@questions = Question.order("created_at DESC")
	end

	def new
		@question=Question.new
    @question.build_answer
	end

	def create
		@question = Question.create(question_params)
    
        respond_to do |format|
          if @question.save
            format.html { redirect_to questions_path, notice: 'question was successfully created.' }
          else
            format.html { render :new }
          end
        end
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		respond_to do |format|
            if @question.update(question_params)
            format.html { redirect_to questions_path, notice: 'question was successfully updated.' }
            else
            format.html { render :edit }
            end
        end
	end

	def destroy
		@question.destroy
        respond_to do |format|
          format.html { redirect_to questions_path, notice: 'question was successfully destroyed.' }
        end
	end

	private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:question_text,:category_id, :correct_answer,answer_attributes: [:id,:ans1,:ans2,:ans3,:ans4])
    end

end
