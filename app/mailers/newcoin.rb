class Newcoin < ApplicationMailer

	default to: Proc.new {User.pluck(:email)}
	def coinadded(post)
		@post=post
		@filename = @post.pictures[0].instance_variable_get('@file').filename
		debugger
		attachments.inline[@filename] = @post.pictures[0].read
		@url  = 'http://www.tradeindialeads.com/login'
    	mail(subject: 'New Coin Added')
	end
end
