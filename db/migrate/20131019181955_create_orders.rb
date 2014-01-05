class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string    :name
      t.string    :email
      t.string    :phone
      t.text      :message
      t.integer   :service_id
      t.timestamps
    end
  end
end
