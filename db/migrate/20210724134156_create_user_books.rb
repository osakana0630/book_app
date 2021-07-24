class CreateUserBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :user_books do |t|
      t.references :user, foreign_keys: true, null: false
      t.references :book,type: :string,  foreign_keys: true, null: false
    end
  end
end
