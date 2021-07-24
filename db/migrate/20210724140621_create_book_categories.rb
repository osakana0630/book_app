class CreateBookCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :book_categories do |t|
      t.references :book, type: :string, foreign_keys: true, null: false
      t.references :category, foreign_keys: true, null: false

      t.timestamps
    end
  end
end
