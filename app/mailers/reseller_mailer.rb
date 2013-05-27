class ResellerMailer < ActionMailer::Base
  default :from => "Vanessa Prado <contato@vanessaprado.com.br>"
  
  def send_reseller_to_adm(reseller)
    @reseller = reseller
    mail(:to => "log@korewa.com.br",:bcc => "log@korewa.com.br",:subject => "Vanessa Prado - Novo Contato Revendedor")
  end
  
end
