RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to "/" unless current_user.try(:admin?)
  end

  config.model Meeting do
    list do
      field :title
      field :date
      field :visible
    end
    edit do
      field :visible
      field :title
      field :date
      field :description, :rich_editor do
        config({:insert_many => true})
      end
      field :venue
      field :agendatech_link
      field :call4paperz_link
      field :album_id
      field :talks do
      end
      field :sponsors do
      end
    end
  end

  config.model Sponsor do
    edit do
      field :name
      field :url
      field :logo, :carrierwave
    end
  end

end

