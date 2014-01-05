class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :title
      t.text    :summary
      t.text    :body

      t.integer :service_id

      t.string  :meta_title
      t.string  :meta_description

      t.timestamps
    end
  end
end
