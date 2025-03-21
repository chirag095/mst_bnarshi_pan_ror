class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from StandardError, with: :render_404

  private

  def render_404(exception = nil)
    Rails.logger.error "Routing Error: #{exception.message}" if exception
    render file: Rails.public_path.join("404.html"), layout: false, status: :not_found
  end
end
