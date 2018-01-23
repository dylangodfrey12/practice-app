class EmailMailer < ApplicationMailer
   
   def new_email(email)
      @email = email
      @greeting = "Hi"

    mail to: "dylangodfrey12@gmail.com"
   end
end
