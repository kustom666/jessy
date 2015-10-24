class NewsletterJob < Struct.new(:newsletter)
	def perform
		NewsletterMailer.on_demand(newsletter).deliver_now
	end
end