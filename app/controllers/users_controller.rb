class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit]

  def index
    if current_user.role_id == 1
      @users = User.all.order(updated_at: :desc)
    else
      render :show
    end
  end

  def show

  end

  def new
    @user = User.new
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(account_update_params)
      redirect_to users_admin_index_url, notice: "User updated successfully !!!"
    else
      render :edit
    end
  end

  def create
    @user = User.new(sign_up_params)
    if @user.save
      redirect_to user_url, notice: "User created successfully !!!"
    else
      render :new
    end
  end

  private
  def set_user
    #begin
    @user = User.find(params[:id])
    @role = current_user.role_id
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :dob, :gender,
                                 :contact, :username, :province, :city_village, :address_line_1, :role_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password,:dob,
                                 :gender, :province, :city_village, :address_line_1, :contact, :username, :role_id)
  end

end
