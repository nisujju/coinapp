class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def contacted
  	@name=params[:name]
  	@email=params[:email]
  	@query = params[:query]
  	@phone = params[:phone]
  	flash[:success] = "Thank you for contacting us. We will get back to you soon to reply on your query."
  	redirect_to root_url
  	Contactus.contact_email(@name, @email, @phone, @query).deliver_later
  end
end
