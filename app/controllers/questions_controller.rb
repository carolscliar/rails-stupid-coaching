class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:ask]
    if @question.downcase == "i am going to work"
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer =  "Silly question, get dressed and go to work!"
    elsif @question.blank?
      @answer = "I can't hear you"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
