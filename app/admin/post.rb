# coding: utf-8

ActiveAdmin.register Post do
  menu :label => "Статьи"

  index do
    selectable_column
    column :title
    column :summary
    column :tag_list
    column :created_at
    actions
  end

  form do |f|
    f.inputs "MAIN" do
      f.input :title
      f.input :tag_list
      f.input :slug
      f.input :summary
      f.input :body , :input_html => { class: 'ckeditor' }
    end
    f.inputs "META", class: "meta" do
      f.input :meta_title
      f.input :meta_keywords
      f.input :meta_description
    end
    f.inputs "PAGE IMAGES" do
      f.has_many :attachments do |a|
        a.input :attach
        a.input :title
      end
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit(:post => [:title, :body, :summary, :icon,
                                 :meta_title, :slug,:tag_list,
                                 :meta_description, :meta_keywords,
                                 attachments_attributes: [:attach, :title, :id, :attacheble_id, :attacheble_type]])
    end
  end
end
