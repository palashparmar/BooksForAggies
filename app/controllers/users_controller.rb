class UsersController < ApplicationController
#rescue_from ActiveRecord::RecordInvalid, :with => :pal


    def index

    	

    end

    def signin
      @email = params[:SignInEmail]
      @password = params[:SignInPassword]
      @result=User.where(["email=? and password_digest=?", @email,@password])
      if @result.count!=0
        session[:currentName]=@result.first.name
        session[:currentUserID]=@result.first.id
        if session.has_key?(:return_path)
          @return_path = session[:return_path]
          session.delete(:return_path)
          redirect_to @return_path
        else
          redirect_to root_path
        end
      else
        flash[:signinError] = 'Either username or password incorrect'
        redirect_to users_path
      end
    end


    def create
      begin
      @username = params[:Username]
      @name=params[:Name]
      @email = params[:SignUpEmail]
      @password = params[:SignUpPassword]

      @user = User.create!(:username => @username, :email => @email, :password_digest => @password, :name => @name)
	    if @user.save
        session[:currentUserID]=@user.id
        session[:currentName] = params[:Name]
	        redirect_to root_path
	    else
          render 'index'
        #redirect_to root_path
      end
      rescue ActiveRecord::RecordInvalid => a
        errorStr = "#{a.record.errors.keys[0]} #{a.record.errors.values[0][0]}!"
        if (errorStr == "user must exist!")
          flash[:error] = "Oops... you must login first!"
        elsif

        flash[:signupError] = errorStr
        end
        redirect_to '/users'
      end
    end
    private
      def pal(a)
        errorStr = "#{a.record.errors.keys[0]} #{a.record.errors.values[0][0]}!"
        if (errorStr == "user must exist!")
          flash[:error] = "Oops... you must login first!"
        elsif

        flash[:error] = errorStr
        end
        render(
            html: "<script>alert('No users!')</script>".html_safe,
            layout: 'application'
        )
        redirect_to '/users'

      end


end
