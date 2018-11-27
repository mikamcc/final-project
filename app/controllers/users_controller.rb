class UsersController < ApplicationController
#   # sign up form
#   # CREATE ##########################################
#
  def new
    @user = User.new
  end

  def create
      user = User.create user_params
      if user.persisted?
      session[:user_id] = user.id
      redirect_to user_path(user) #go to the show page for this user
      else
      #Accoutn not created: show error
      #set a flash key to show on the next page: it will be an array of error strings
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path #/users/new, show the form again (with errors)
      end
  end

  # READ ############################################
  def index
      @users = User.all
  end

  def show
      @user = User.find params[:id]
  end

  # UPDATE ################################################
  def edit
    @quotation = Quotation.find params[:id]
  end

  def update
    unless @quotation.user == @current_user
       return
     end
  end


  #DELETE###########################################
  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
