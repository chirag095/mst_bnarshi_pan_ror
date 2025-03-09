class Web::AwardsController < ApplicationController
  def index
     @awards = Award.all
  end
end
