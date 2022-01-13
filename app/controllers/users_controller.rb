class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "Post was successfully created by controller." }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:title, :body, :name)
    end
end
