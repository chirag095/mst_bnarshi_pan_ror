class Web::GalleriesController < ApplicationController
	def index
		@galleries = Gallery.all
		@banner_gallery_img = Banner.find_by_banner_img_type(:gallery)
	end
end
