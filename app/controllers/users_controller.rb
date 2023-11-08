class UsersController < ApplicationController
def new
@user = User.new
end

def create
@user = User.new(user_parameters)
respond_to do |format|
if @user.save
format.html { redirect_to root_path, notice: "Successfully signed up" }
else
format.html { render :new, error: "Invalid input", status: :unprocessable_entity }
end
end
end

private

def user_parameters
params.require(:user).permit(:email, :password, :password_confirmation)
end

end
