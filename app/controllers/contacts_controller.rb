class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message envoyé'
    else
      flash.now[:error] = "Nous n'avons pas pu envoyer votre message"
      render :new
    end
  end
end
