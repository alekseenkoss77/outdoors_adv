class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string  :title
      t.string  :description
      t.string  :url
      t.timestamps
    end

    add_attachment :slides, :photo
  end
end
