class GuestsController < ApplicationController
	def index
		@categories=Category.all
	end
end
