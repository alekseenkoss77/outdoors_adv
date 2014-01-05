class Attachment < ActiveRecord::Base
  belongs_to :attacheble, polymorphic: true

  has_attached_file :attach, styles: {small: '314x157#', gallery: '1024x768<'}
end
