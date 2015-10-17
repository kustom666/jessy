class StaticPagesController < ApplicationController
	def home
		@data = StaticPage.find_by name: "home"
	end
	def stream
		@data = StaticPage.find_by name: "stream"
	end
	def about
		@data = StaticPage.find_by name: "about"
	end
end
