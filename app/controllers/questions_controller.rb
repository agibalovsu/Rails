class QuestionsController < ApplicationController
  
  before_action :find_test, only: %i[index create new]
  before_action :find_question, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index  
    @questions = @test.questions
  end

  def show 
    
  end
  
  def new
    @question = Question.new
  end

  def edit

  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_questions_path
    else
      render :new
    end
  end

  def destroy

    @question.destroy

    redirect_to test_questions_path(@question.test_ids)
  end

  def update
    
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    render plain: 'Ошибка 404: вопрос не найден'
  end
end
