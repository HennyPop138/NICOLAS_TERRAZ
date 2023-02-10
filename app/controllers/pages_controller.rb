class PagesController < ApplicationController
  def home
  end

  def about
  end

  def plomberie
  end

  def chauffage
  end

  def climatisation
  end

  def contact
  end

  def send_contact
    contact_infos = { message: params[:message],
                      email: params[:email],
                      name: params[:name],
                      tel: params[:tel],
                      subject: params[:subject] }
    ContactMailer.contact(contact_infos).deliver_now
    flash[:alert] = 'Votre demande de contact a bien été envoyée, nous vous répondrons dans les plus brefs délais.'
    redirect_to confirmation_url
  end

  def confirmation
  end
end
