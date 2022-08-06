class Api::V1::SpacesController < Api::V1::BaseController
  # skip_before_action :verify_authenticity_token
  before_action :set_space, only: [:show, :update]
  def index
    if params[:category].present?

      @spaces = Space.published.where(category: params[:category])
    elsif params[:search].present?
      sql_query = 'name ILIKE :search OR sub_category ILIKE :search'
      @spaces = Space.published.where(sql_query, search: "%#{params[:search]}%")

    else
      @spaces = Space.published
    end
  end

  def show
    @space = Space.find(params[:id])
    @recommended_spaces = Space.published.where(category: @space.category).sample(3)
    @favorited = @current_user.favorited?(@space)
    if Review.where(space_id: params[:id]).length.positive?
      @review = Review.where(space_id: params[:id]).last
      @review_count = Review.where(space_id: params[:id]).length

    else
      @review_count = Review.where(space_id: params[:id]).length
    end
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      # @review = Review.last
      # render :show, status: :created
      render json: { space: { id: @space.id } }
    else
      render_error
    end
  end

  def upload
    @space = Space.find(params[:id])
    if @space.image.attach(params.require(:file))
      render json: { msg: 'photo uploaded' }
    else
      render json: { err: 'fail to upload' }
    end
  end


  def toggle_favorite
    @space = Space.find_by(id: params[:id])
    @current_user.favorited?(@space) ? @current_user.unfavorite(@space) : @current_user.favorite(@space)
    @favorited = @current_user.favorited?(@space)
    @recommended_spaces = Space.where(category: @space.category).sample(3)
  end

  def featured_review
    # need to change this to reflect a random review selected from reviews with the highest rating for that particular space
    # keep in mind that the highest rating available may not be 5
    @review = Review.last
  end


  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :category, :latitude, :longitude, :image, :access, {:features => []}, :category, :sub_category, :image)
  end

  def render_error
    render json: { errors: @space.errors.full_messages }, status: :unprocessable_entity
  end
end
