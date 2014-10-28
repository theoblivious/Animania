class QuizStagesController < ApplicationController
  before_action :set_quiz_stage, only: [:show, :edit, :update, :destroy]

  def index
    @quiz_stages = QuizStage.all
    respond_with(@quiz_stages)
  end

  def show
    respond_with(@quiz_stage)
  end

  def new
    @quiz_stage = QuizStage.new
    respond_with(@quiz_stage)
  end

  def edit
  end

  def create
    @quiz_stage = QuizStage.new(quiz_stage_params)
    @quiz_stage.save
    respond_with(@quiz_stage)
  end

  def update
    @quiz_stage.update(quiz_stage_params)
    respond_with(@quiz_stage)
  end

  def destroy
    @quiz_stage.destroy
    respond_with(@quiz_stage)
  end

  private
    def set_quiz_stage
      @quiz_stage = QuizStage.find(params[:id])
    end

    def quiz_stage_params
      params.require(:quiz_stage).permit(:quiz_id, :questions_id)
    end
end
