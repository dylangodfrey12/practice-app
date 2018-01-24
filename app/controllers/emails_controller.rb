class EmailsController < ApplicationController
  def index
    redirect_to new_email_url
  end

  def new
    @email = Email.new
  end
  
  def create
    @email = Email.new(email_params)
    if @email.save
      EmailMailer.new_email(@email).deliver_now
      flash[:info] = "Thank you for the email, we will get back to you shortly"
      redirect_to root_url
    else
      render 'new'
    end
  end
  
  

  private

    def email_params
      params.require(:email).permit(:name, :email, :phone,
                                   :content)
    end
end
