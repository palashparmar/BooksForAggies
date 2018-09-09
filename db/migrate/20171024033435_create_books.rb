class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :category
      t.string :isbn_no
      t.binary :image
      t.string :edition
      t.text :abstract
      t.string :publisher
      t.date :date_of_publish
      t.string :descriptors

      t.timestamps
    end
  end
end
