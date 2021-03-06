class SessionsController < ApplicationController

  

   def create

     # get email/pw from form
     email = params[:email]
     password = params[:password]
     # find user from the email
     user = User.find_by email: email
     # authenticate the password
     if user.present? && user.authenticate(password)
       # session & redirect or render
       sign_in user
       redirect_to root_path
     else
       flash.now[:alert] =  "Something is wrong with your email or password. Try gain."
       render :new
     end

   end

   def delete
     sign_out
     redirect_to root_path, notice: "You are now signed out. Thank you come again"
   end

end
