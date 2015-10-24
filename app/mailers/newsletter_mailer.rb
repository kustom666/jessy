class NewsletterMailer < ActionMailer::Base
	default from: "newsletter@jessyquil.tv"

	def on_demand(newsletter)
		User.find_each do |user|
		    @newsletter = newsletter
		    mail(to: user.email, subject: @newsletter.title)
		end
	end
end