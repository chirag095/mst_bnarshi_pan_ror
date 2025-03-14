class MobHeaderComponent < ViewComponent::Base
	def initialize
  	@events = Event.all
    @pan_outlates = PanOutlate.all
  end 
 
end