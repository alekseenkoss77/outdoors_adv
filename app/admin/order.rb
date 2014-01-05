# coding: utf-8

ActiveAdmin.register Order do
  index do
    column :name
    column :email
    column :phone
    column :created_at
    actions
  end
end
