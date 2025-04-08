class FormComponent < ViewComponent::Base
 def initialize
  	@states = State.all
  end 
end
