class Contactus < ApplicationMailer

  default to: "tiloffers@gmail.com"
  def contact_email(user_name, email, phone, query)
    @name = user_name
    @email  = email
    @phone = phone
    @query = query
    mail(subject: 'Contact Query by a User')
  end
end
