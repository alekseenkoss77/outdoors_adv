class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string    :title
      t.text      :body
      t.string    :deadline
      t.timestamps
    end
  end
end
