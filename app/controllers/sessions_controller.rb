class SessionsController < ApplicationController

  def new
  end

  def create
    if user = User.authenticate_by(email: params[:email], password: params[:password])
      #reset_session # VULNERABLE
      user.session = session.id
      user.save!
      redirect_to root_path
    else
      flash[:alert] = 'Invalid email or password.'
      render :new
    end
  end

  def destroy
    if current_user
      current_user.session = nil
      current_user.save!
    end
    #reset_session # VULNERABLE
    redirect_to root_path, notice: 'Logged out successfully.'
  end
end

