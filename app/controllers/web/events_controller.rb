class Web::EventsController < ApplicationController
	def index
		@events = Event.all
		@states = State.all
		@pan_outlates = PanOutlate.all
	end
end
