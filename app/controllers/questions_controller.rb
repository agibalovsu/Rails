class QuestionsController < ApplicationController
  
  before_action :find_test, only: %i[:index :show]
  before_action :find_question, only: %i[:create :destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index  
    render inline: '<%= @test.questions %>'
  end

  def show 
    render json: { questions: Question.find(params[:id])}
    #render inline: '<%= @test.title %>'
  end
  
  def new
    
  end

  def create
    question = Question.new(question_params)
    if question.save
      redirect_to controller: 'questions', action: 'index', test_id: question.test_id
    else
      render :new
    end
  end

  def destroy
    @question.destroy
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

