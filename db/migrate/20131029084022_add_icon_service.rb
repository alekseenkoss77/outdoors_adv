class AddIconService < ActiveRecord::Migration
  def change
    add_attachment :services, :icon
  end
end
