class SessionController < ApplicationController

  def new
  end

  def create
    # finds the admin by the given email
    admin = Admin.find_by(email: params[:email])
    # if we found the admin and they gave us the right password
    if admin && admin.authenticate(params[:password])
      # store admin id in session
      session[:admin_id] = admin.id
      redirect_to("/")
    else
      # rerender the login form
      render(:new)
    end
  end

  def destroy
    # we can set the session admin_id to nil
    session[:admin_id] = nil
    redirect_to(root_path)
  end
end