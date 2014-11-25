user,class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all
    # respond_with(@questions)
  end

  def show

    @question = Question.find(params[:id])
    @anime = Anime.find(params[:anime_id])  # need to specify the @ instance so that it can be recognized in my views



    # case params[:lang]
    # when "japanese"
    #   render "show_japanese"
    # when "english"
    #   render "show_english"
    # else
    #   puts "error unsupported language"
    # end



    # respond_with(@question)
  end

  def new
    @question = Question.new
    # respond_with(@question)
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    @question.save
    # respond_with(@question)
  end

  def update
    @question.update(question_params)
    # respond_with(@question)
  end

  def destroy
    @question.destroy
    # respond_with(@question)
  end

  private
  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:english, :japanese, :anime_id) #:integer
  end
end
