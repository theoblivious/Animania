class QuizController < ApplicationController
  # this is like a show action
  # GET /quiz/japanese
  def japanese
    @question = Question.find(params[:id])
    @japanese = @question.japanese
  end

  # this is like a show action
  # GET /quiz/english
  def english
    @question = Question.find(params[:id])
    @english = @question.english
    @anime = @question.anime
  end
end
