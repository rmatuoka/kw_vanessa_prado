class ResellersController < ApplicationController

  def index
    redirect_to new_reseller_path
  end
  def new
    @reseller = Resale.new
  end
  def create
    @reseller = Resale.new(params[:resale])
    if @reseller.save
      ResellerMailer.send_reseller_to_adm(@reseller).deliver
      redirect_to reseller_path(@reseller), :notice => "Mensagem enviada com sucesso."
    
    else
      render :action => 'new'
    end
  end
  def show
   # @reseller = Resale.find_by_id(params[:id])
  end
end
