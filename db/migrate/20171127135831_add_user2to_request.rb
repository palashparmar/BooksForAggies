class AddUser2toRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :user2_id, :integer
  end
end
