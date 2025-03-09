class Web::EventsController < ApplicationController
	def index
		@events = Event.all
		@states = State.all
		@pan_outlates = PanOutlate.all
	end
        def show
		@events = Event.all
        @states = State.all
		@pan_outlates = PanOutlate.all
		@event = Event.find_by_id(params[:id])
	end
end
