# Preview all emails at http://localhost:3000/rails/mailers/email_mailer
class EmailMailerPreview < ActionMailer::Preview
   
  def new_email
   email = Email.last
    EmailMailer.new_email(email)
  end
end
