class AddPriorityToService < ActiveRecord::Migration
  def change
    add_column :services, :priority, :integer
  end
end
