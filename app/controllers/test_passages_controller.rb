class TestPassagesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_test_passage, only: %i[show result update gist]

  def show
  
  end

  def result

  end

  def gist
    service = GistQuestionService.new(@test_passage.current_question)
    result = service.call

    if service.success?
      current_user.gists.create(question: @test_passage.current_question,
                                 url: result.html_url)
      flash[:notice] = t('.success', gist_link: view_context.link_to(t('.view_gist'),result.html_url, target: "_blank"))                                                           
    else
      flash[:alert] = t('.failure')
    end

    redirect_to @test_passage
  end
  
  def update
    @test_passage.accept!(params[:answer_ids])
    

    if @test_passage.completed?
      current_user.badges << BadgeService.new(@test_passage).call
      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end
  
  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end
end