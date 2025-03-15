class Web::AwardsController < ApplicationController
  def index
     @awards = Award.all
     @banner_award_img = Banner.find_by_banner_img_type(:award)
  end
end
