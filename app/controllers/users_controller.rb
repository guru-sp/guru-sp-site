class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id]) || current_user
  end

  def update
    @user = User.new params[:user]
    if @user.save
      redirec_to :index , :notice => "Usuario modificado"
    else
      render :edit, :alert => "Impossivel salvar usuario"
    end
  end

end

