class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :book_id
      t.text :des

      t.timestamps
    end
  end
end
