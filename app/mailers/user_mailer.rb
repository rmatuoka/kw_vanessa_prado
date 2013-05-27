class UserMailer < ActionMailer::Base
  default :from => "Vanessa Prado<teste@korewa.com.br>"
  
  def send_email_password_reset(user)
    @user = user
		mail(:to => user.email, :subject => "Instruções para trocar a senha")
	end
	
end
