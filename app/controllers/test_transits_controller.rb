class TestTransitsController < ApplicationController
before_action :set_test_transit, only: %i[show result update]

  def show
  
  end

  def result

  end

  def update
    @test_transit.accept!(params[:answer_ids])
    
    if @test_transit.completed?
      redirect_to result_test_transit_path(@test_transit)
    else
      render :show
    end
  end

  private

  def set_test_transit
    @test_transit = TestTransit.find(params[:id])
  end
end
