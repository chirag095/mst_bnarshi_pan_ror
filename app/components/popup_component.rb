class PopupComponent < ViewComponent::Base
    def initialize
  	@states = State.all
    @pan_outlates = PanOutlate.all
  end 
end