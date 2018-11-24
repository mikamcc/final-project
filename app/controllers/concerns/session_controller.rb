class SessionController < ApplicationController
  # log in form
  def new
  end

  def create
    user = User.find_by email: params[:email]

      if user.present? && user.authenticate(params[:password])
        #Successful login
        #Get Rails to create a new session key variable to store the user's ID:
        #this is the session key which we weill use to check if the users
        #is logged inon all future pages
        session[:user_id] = user.id

        redirect_to user_path(user.id)
      else
        # Bad credentials, ie unsuccessful login
        flash[:error] = "Invalid email address or password"
        redirect_to (login_path)
      end
  end

  def destroy
    session[:user_id] = nil #this logs out the user
    redirect_to login_path
  end
end
