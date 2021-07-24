class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, :id => false do |t|
      t.string :id, null: false, primary_key: true
      t.string :title, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
