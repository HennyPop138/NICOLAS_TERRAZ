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
    message = params[:message]
    ContactMailer.contact(message).deliver_now
    redirect_to root_path
  end
end
