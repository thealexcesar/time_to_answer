class UsersController < ApplicationController
  before_action :set_user, only: :show
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

  def show
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:title, :body, :name)
  end
end
