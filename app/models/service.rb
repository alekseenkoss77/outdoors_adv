# coding: utf-8

class Service < ActiveRecord::Base
   has_many :items
   has_many :orders
   has_many :attachments, as: :attacheble
   accepts_nested_attributes_for :attachments, allow_destroy: true

   has_attached_file :icon, styles: {small: '100x100'}

   default_scope { order('priority') }

end
