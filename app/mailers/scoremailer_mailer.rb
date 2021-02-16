class ScoremailerMailer < ApplicationMailer
	default from: 'ns0316685@gmail.com'
   
   def score_email(user,score,attempt)
      @user = user
      @score = score
      @attempt=attempt
      @url  = 'https://quizapp-gurzunaren.herokuapp.com/attempts/'+@attempt.id.to_s
      mail(to: @user.email, subject: 'QuizApp:Score Card')
   end
end
