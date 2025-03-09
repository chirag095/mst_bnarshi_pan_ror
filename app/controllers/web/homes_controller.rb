class Web::HomesController < ApplicationController
	def index 
        @states = State.all
        @prodicts = Product.all
        @pan_outlates = PanOutlate.all
        @franchise_benefits = FranchiseBenefit.all
        @youtubs = Youtube.all
        @faqs = Faq.all
	end

	def about
	end

	def state_detail
		@states = State.all
		@pan_outlates = PanOutlate.all
		# @state = State.find_by_id(params[:id])
		@state = State.friendly.find(params[:slug])
    end

    # def show
    # 	@states = State.all
	# 	@pan_outlates = PanOutlate.all
	# 	p "================"
	# 	p params[:slug]
    #    @state = State.friendly.find(params[:slug])
    # end 
        def contact_us
	end 
        
        def product_detail
		@states = State.all
		@products = Product.all
		@pan_outlates = PanOutlate.all
		@product = Product.find_by_id(params[:id])
	end
	def create
	    @user = User.new(user_params)

	    if @user.save
	      flash[:notice] = "Your request has been submitted successfully!"
	      redirect_to root_path # Change to the desired path
	    else
	      flash[:alert] = "There was an error submitting the form."
	      render :new
	    end
	end

	def outlate_detail
		@states = State.all
		@pan_outlates = PanOutlate.all
		@outlate = PanOutlate.find_by_id(params[:id])
	end

	private

	def user_params
	    params.permit(:full_name, :email, :contact, :description)
	          .merge(pan_outlate_id: params[:outlate], state_id: params[:state])
	end
end
