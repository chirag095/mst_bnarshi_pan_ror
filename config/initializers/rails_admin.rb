RailsAdmin.config do |config|
  config.asset_source = :importmap
  config.main_app_name = ["Mast Bnarshi Pan"]
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.authorize_with do
    authenticate_or_request_with_http_basic('Please enter your admin username and password') do |username, password|
      username == "pan@gmail.com" && password == "123456"
    end
  end

  config.model 'City' do
    edit do
      fields :id, :title
    end
  end

  # config.actions do
  #   dashboard                     # mandatory
  #   index                         # mandatory
  #   new
  #   export
  #   bulk_delete
  #   show
  #   edit
  #   delete
  #   show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  # end
end
