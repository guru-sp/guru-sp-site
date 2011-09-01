RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to "/" unless current_user.try(:admin?)
  end
end

