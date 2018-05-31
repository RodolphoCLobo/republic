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

  def edit
    @user = User.find params[:id]
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

  def update
    flash[:success] = 'Usuário atualizado!'
    @user = User.find params[:id]
  	respond_to do |format|
      if @user.update(user_params)
        format.html { render :show, status: :ok, location: @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: t(:successfully_destroyed) }
      format.json { head :no_content }
    end
  end

  def search_republic
    redirect_to new_user_house_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :avatar, :password, :password_confirmation)
  end
end
