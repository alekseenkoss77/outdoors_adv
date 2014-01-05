# coding: utf-8
ActiveAdmin.register Item do

  form do |f|
    f.inputs do
      f.input :title
      f.input :summary
      f.input :body, input_html: {class: 'ckeditor'}
      f.input :service
    end
    f.inputs do
      f.has_many :attachments do |a|
        a.input :attach
      end
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit(:item => [:title, :summary, :body, :service_id, :services,
                              :attachments_attributes => [:id, :attach, :title,
                                                          :attacheble_id, :attacheble_type]])
    end
  end
end
