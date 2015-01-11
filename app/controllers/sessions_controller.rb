class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect
      log_in(user)
      redirect_to user
    else
      # Error
      flash[:danger] = 'Invalid email/password combination' # nopesy
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
