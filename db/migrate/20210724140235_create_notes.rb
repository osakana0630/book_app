class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :book, type: :string, foreign_keys: true, null: false
      t.text :description

      t.timestamps
    end
  end
end
