class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit]

  def index

  end

  def show

  end

  def new
    @user = User.new
  end

  def edit
    redirect_to users_path, notice: @notice
  end

  private
  def set_user
    #begin
    @user = User.find(params[:id])
    @role = current_user.role_id
  end

end
