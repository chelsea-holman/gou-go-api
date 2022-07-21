class Api::V1::SpacesController < Api::V1::BaseController
  def index
    if params[:category].present?
      @spaces = Space.where(category: params[:category])
    else
      @spaces = Space.all
    end
  end

  def show
    @space = Space.find(params[:id])
    # p @space
  end
end
