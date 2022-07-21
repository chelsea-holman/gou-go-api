class Api::V1::SpacesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_space, only: [:show, :update]
  def index
    @spaces = Space.all
  end

  def show
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      render :show, status: :created
    else
      render_error
    end
  end

  def upload
    @space = Space.find(params[:id])
    if @space.photo.attach(params.require(:file))
      render json: { msg: 'photo uploaded' }
    else
      render json: { err: 'fail to upload' }
    end
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :category, :image, :access, {:features => []}, {:categories =>[]})
  end

  def render_error
    render json: { errors: @space.errors.full_messages },
    status: :unprocessable_entity
  end
end
