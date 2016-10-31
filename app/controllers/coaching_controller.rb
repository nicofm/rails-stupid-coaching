class CoachingController < ApplicationController
  def ask
    @message = "Ask your question"
  end

  def answer
    @return_answer = coach_answer(params[:question])
    @your_message = params[:question]
  end

  def coach_answer(your_message)
  # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return ""

    elsif your_message.include?("?")
      return "Silly question, get dressed and go to work!"

    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.include?("I am going to work right now!".upcase)
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else coach_answer(your_message)
  end
end
end
