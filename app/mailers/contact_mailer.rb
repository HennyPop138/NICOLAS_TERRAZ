class ContactMailer < ApplicationMailer
  def contact(contact_infos)
    @message = contact_infos[:message]
    @email = contact_infos[:email]
    @name = contact_infos[:name]
    @tel = contact_infos[:tel]
    @subject = contact_infos[:subject]
    @intervention = contact_infos[:intervention]
    mail(to: 'Tipcc@orange.fr', subject: @subject)
  end
end
