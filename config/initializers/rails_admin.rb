RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to "/" unless current_user.try(:admin?)
  end

  config.model Meeting do
    list do
      field :title
      field :date
    end
    edit do
      field :talks do
      end
      field :title
      field :date
      field :description, :text do
        ckeditor true
      end
    end
  end



end

