class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
	end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      flash[:success] = 'Usuário cadastrado!'
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar, :password, :password_confirmation)
  end
end
