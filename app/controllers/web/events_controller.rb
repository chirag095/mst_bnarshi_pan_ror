class Web::EventsController < ApplicationController
	def index
		@events = Event.all
		@states = State.all
		@pan_outlates = PanOutlate.all
	end
        def show
        @faqs = Faq.all
		@events = Event.all
        @states = State.all
		@pan_outlates = PanOutlate.all
		@event = Event.friendly.find(params[:slug])
	end
end
