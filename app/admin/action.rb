# coding: utf-8

ActiveAdmin.register Action do

  index do
    column :title
    column :deadline
    actions
  end

  controller do
    def permitted_params
      params.permit(:item => [:title, :deadline, :body ])
    end
  end

end
