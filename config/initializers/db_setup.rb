if Rails.env.production?
  begin
    ActiveRecord::Base.connection
  rescue ActiveRecord::NoDatabaseError
    puts "Creating database..."
    system("bundle exec rails db:create db:migrate")
  end
end
