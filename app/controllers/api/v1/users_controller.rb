class Api::V1::UsersController < Api::V1::BaseController
  def profile
    @spaces = @current_user.favorite_spaces
  end
end
