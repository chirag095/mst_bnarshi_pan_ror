class Web::BlogsController < ApplicationController
	def index
		@states = State.all
		@blogs = Blog.all
		@pan_outlates = PanOutlate.all
	end
	def detail
		@states = State.all
		@blogs = Blog.all
		@pan_outlates = PanOutlate.all
		@blog = Blog.friendly.find(params[:slug])
	end
end
