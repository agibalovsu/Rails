class QuestionsController < ApplicationController
  
  before_action :find_test, only: %i[show]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index 
    render json: {questions: Question.all}
  end

  def show 
    #render json: { questions: Question.find(params[:id]) }
    render inline: '<%= @test.title %>'
  end
  
  def new
    
  end

  def create
    @question = Question.create(question_params)
    render plain: question.inspect
  end

  def destroy
    @question.destroy
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: 'Ошибка 404: вопрос не найден'
  end
end

