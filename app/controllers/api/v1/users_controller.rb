class Api::V1::UsersController < Api::V1::BaseController
  def profile
    @spaces = @current_user.favorite_spaces
  end

  # def index
  #   @users = Users.where
  # end

  def update
    user_params = params.require(:user).permit(:picture_url, :dog_name)
    p @current_user
    @current_user.update!(user_params)

    render json: @current_user
  end
end
