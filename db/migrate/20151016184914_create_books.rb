class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :surname
      t.string :title
      t.string :subtitle
      t.string :isbn
      t.string :color
      t.string :category
      t.string :tags
      t.boolean :lease
      t.string :cover

      t.timestamps null: false
    end
  end
end
