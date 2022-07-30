class Api::V1::ReviewsController < Api::V1::BaseController
  def index
    @reviews = Review.find(params[:space_id])
  end

  def show
    @reviews = Review.find(params[:space_id]).sample(1)
  end
end
