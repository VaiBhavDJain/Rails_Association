class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string "book"
      t.belongs_to :author, foreign_key: true
    end
  end
end
