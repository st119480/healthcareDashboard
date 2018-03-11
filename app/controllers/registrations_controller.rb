class RegistrationsController < Devise::RegistrationsController

  before_action :sign_up_params, :account_update_params, if: :devise_controller?

  private
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :dob, :gender,
                                 :contact, :username, :province, :city_village, :address_line_1, :role_id)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :current_password,:dob,
                                 :gender, :province, :city_village, :address_line_1, :contact)
  end

  protected
  def after_update_path_for(resource)
    user_path(resource)
  end



end
