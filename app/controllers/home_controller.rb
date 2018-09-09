class HomeController < ApplicationController
  def index
    if session.has_key?(:currentName)
      @loginTab=session[:currentName]
    else
      @loginTab='Login/Signup'
    end
  end

  def logout
    session.delete(:currentName)
    session.delete(:currentUserID)
    redirect_to root_path
  end

  def book
    if session.has_key?(:currentName)
      redirect_to '/book'
    else
      session[:return_path]='/book'
      redirect_to '/users'
    end
  end
end
