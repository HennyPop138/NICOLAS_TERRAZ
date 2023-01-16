class ContactMailer < ApplicationMailer
  def contact(message)
    @message = message
    mail(to: 'ananjules.mignot@gmail.com', subject: 'Test')
  end
end
