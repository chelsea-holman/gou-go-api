class Api::V1::SpacesController < Api::V1::BaseController
  def index
    @spaces = Space.all
  end
end
