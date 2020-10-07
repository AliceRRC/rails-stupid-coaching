class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = params[:answer]
    if @answer.include? '?'
      @coach = 'Silly question, get dressed and go to work!'
    elsif @answer == 'I\'m going to work'
      @coach = 'Great!'
    else
      @coach = 'I don\'t care, get dressed and go to work!'
    end
  end
end
