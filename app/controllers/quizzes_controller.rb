class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  def index
    @quizzes = Quiz.all
    respond_with(@quizzes)
  end

  def show
    respond_with(@quiz)
  end

  def new
    @quiz = Quiz.new
    respond_with(@quiz)
  end

  def edit
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.save
    respond_with(@quiz)
  end

  def update
    @quiz.update(quiz_params)
    respond_with(@quiz)
  end

  def destroy
    @quiz.destroy
    respond_with(@quiz)
  end

  private
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    def quiz_params
      params[:quiz]
    end
end
