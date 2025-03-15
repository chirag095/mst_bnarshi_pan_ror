class Web::BlogsController < ApplicationController
	def index
		@states = State.all
		@blogs = Blog.all
		@pan_outlates = PanOutlate.all
		@banner_blog_img = Banner.find_by_banner_img_type(:blog)
	end
	def detail
		@states = State.all
		@blogs = Blog.all
		@pan_outlates = PanOutlate.all
		@blog = Blog.friendly.find(params[:slug])
	end
end
