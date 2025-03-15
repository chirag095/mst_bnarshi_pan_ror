class Web::HomesController < ApplicationController
	def index 
        @states = State.all
        @prodicts = Product.all
        @pan_outlates = PanOutlate.all
        @franchise_benefits = FranchiseBenefit.all
        @youtubs = Youtube.all
        @faqs = Faq.where(faq_type: :home)
        @banner_home_img = Banner.find_by_banner_img_type(:home)
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

    # def show
    # 	@states = State.all
	# 	@pan_outlates = PanOutlate.all
	# 	p "================"
	# 	p params[:slug]
    #    @state = State.friendly.find(params[:slug])
    # end 
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
	      if params[:action_form] == "home"
	         redirect_to root_path 
	      elsif params[:action_form] == "contact_us"
	      	redirect_to contact_us_path
	      elsif params[:action_form] == "outlate"
            redirect_to model_path(params[:outlate_id] )
	      elsif params[:action_form] == "product"
            redirect_to product_detail_path(params[:product_id])
	      elsif params[:action_form] == "state"	
           redirect_to states_path
	      elsif params[:action_form] == "event_show"
           redirect_to events_path
	      elsif params[:action_form] == "event"	
           redirect_to events_path
	      elsif params[:action_form] == "blog"
           redirect_to blogs_path
	      elsif params[:action_form] == "blog_detail"
           redirect_to blogs_path
	      else
	      	redirect_to root_path
	      end   	   
	    else
	      flash[:alert] = "There was an error submitting the form."
	      render :new
	    end
	end

	def outlate_detail
		@faqs = Faq.where(faq_type: :outlate)
		@states = State.all
		@pan_outlates = PanOutlate.all
		@outlate = PanOutlate.friendly.find(params[:slug])
	end

	private

	def user_params
	    params.permit(:full_name, :email, :contact, :description)
	          .merge(pan_outlate_id: params[:outlate], state_id: params[:state])
	end
end
