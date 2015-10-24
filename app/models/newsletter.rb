class Newsletter < ActiveRecord::Base
	after_save :send_news

	private
	def send_news
		#Delayed::Job.enqueue(NewsletterJob.new(self), :run_at => self.send_at)
		if self.send_it
			NewsletterMailer.on_demand(self).deliver_later
		end
	end
end
