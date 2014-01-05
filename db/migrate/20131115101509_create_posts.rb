class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string    :title
      t.text      :body
      t.text      :summary
      t.string    :meta_title
      t.string    :meta_keywords
      t.text      :meta_description
      t.timestamps
    end
  end
end
