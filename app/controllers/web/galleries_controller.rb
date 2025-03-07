class Web::GalleriesController < ApplicationController
	def index
		@galleries = Gallery.all
	end
end
