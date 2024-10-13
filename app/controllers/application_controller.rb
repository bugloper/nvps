class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :setup_db

  private

  def setup_db
   puts "Creating database..."
   system("bundle exec rails db:create db:migrate")
  rescue StandardError
    system("bundle exec rails db:migrate")
  end
end
