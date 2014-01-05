class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string      :title
      t.text        :summary
      t.text        :body

      t.string      :meta_title
      t.string      :meta_keywords
      t.text        :meta_description
      t.string      :slug

      t.timestamps
    end
  end
end
