class Api::V1::ReviewsController < Api::V1::BaseController
  def index
    @reviews = Review.all.where(space_id: params[:space_id])
  end



  def create
    @review = Review.new(review_params)
    @review.user = @current_user
    @review.date = Date.today.strftime('%d/%m/%Y')
    @review.space_id = Space.find(params[:space_id]).id
    @review.save
    if @review.save
      render :index, status: :created
    else
      render_error
    end
  end

  private


  def review_params
    params.require(:review).permit(:comment, :user, :space_id, :rating, :image)
  end

  def render_error
    render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
  end
end
