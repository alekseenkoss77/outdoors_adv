class Item < ActiveRecord::Base

  belongs_to :service
  has_many   :attachments, as: :attacheble
  accepts_nested_attributes_for :attachments, allow_destroy: true
end
