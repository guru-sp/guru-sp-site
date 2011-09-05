RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to "/" unless current_user.try(:admin?)
  end

  config.model Meeting do
    edit do
      field :title
      field :date
      field :description, :text do
        ckeditor true
      end
    end
  end

end

