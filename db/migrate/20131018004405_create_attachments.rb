class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string    :title
      t.integer   :attacheble_id
      t.string    :attacheble_type
      t.timestamps
    end
  end
end
