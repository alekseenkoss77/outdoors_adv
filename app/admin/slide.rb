ActiveAdmin.register Slide do

  index do
    column :title
    column :url
    column :created_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :url
      f.input :photo
      f.actions
    end
  end

  controller do
    def permitted_params
      params.permit(:slide => [:title, :description, :url, :photo])
    end
  end
end
