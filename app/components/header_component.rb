class HeaderComponent < ViewComponent::Base
 def initialize
  	@events = Event.all
  end 
end
