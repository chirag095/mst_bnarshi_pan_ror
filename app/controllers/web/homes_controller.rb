class Web::HomesController < ApplicationController
	def index 
        @states = State.all
        @prodicts = Product.all
        @pan_outlates = PanOutlate.all
        @franchise_benefits = FranchiseBenefit.all
        @youtubs = Youtube.all
        @faqs = Faq.where(faq_type: :home)
        @banner_home_img = Banner.find_by_banner_img_type(:home)
        @upcomings = Upcoming.all

	end

	def master_franchise
	 @faqs = Faq.where(faq_type: :state)
		@banner_state_img = Banner.find_by_banner_img_type(:state)
		@states = State.all
		@pan_outlates = PanOutlate.all

		
	end

	def foco_model
		@faqs = Faq.where(faq_type: :state)
		@banner_state_img = Banner.find_by_banner_img_type(:state)
		@states = State.all
		@pan_outlates = PanOutlate.all
	end

	def about
		@banner_about_img =  Banner.find_by_banner_img_type(:about)
	end

	def state_detail
		@faqs = Faq.where(faq_type: :state)
		@banner_state_img = Banner.find_by_banner_img_type(:state)
		@states = State.all
		@pan_outlates = PanOutlate.all
		# @state = State.find_by_id(params[:id])
		@state = State.friendly.find(params[:slug])
    end


    def contact_us
        @states = State.all
		@pan_outlates = PanOutlate.all
		@banner_contact_us_img =  Banner.find_by_banner_img_type(:contact_us)
	end 
        
        def product_detail
        @faqs = Faq.where(faq_type: :product)
        @banner_product_img = Banner.find_by_banner_img_type(:product)
		@states = State.all
		@products = Product.all
		@pan_outlates = PanOutlate.all
		@product = Product.friendly.find(params[:slug])
	end
	def create
	    @user = User.new(user_params)

	    if @user.save
	      flash[:notice] = "Your request has been submitted successfully!"
	        redirect_to thankyou_path 
	    else
	      flash[:alert] = "There was an error submitting the form."
	      render :new
	    end
	end

	def thankyou
	end

	def outlate_detail
		@faqs = Faq.where(faq_type: :outlate)
		@states = State.all
		@pan_outlates = PanOutlate.all
		@outlate = PanOutlate.friendly.find(params[:slug])
	end

	private

	def user_params
	    params.permit(:full_name, :email, :contact, :description, :enquiry_form)
	          .merge(pan_outlate_id: params[:outlate], state_id: params[:state])
	end
end
