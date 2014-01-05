class Slide < ActiveRecord::Base
  has_attached_file :photo, styles: {slide: "942x315#"}
end
