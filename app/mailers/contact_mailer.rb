class ContactMailer < ApplicationMailer
  def contact(message)
    @message = message
    mail(to: 'anan.wav@gmail.com', subject: 'Test')
  end
end
