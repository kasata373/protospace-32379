class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :proffile, :occupation, :prototype).merge(user_id: current_user.id)
  end

end
