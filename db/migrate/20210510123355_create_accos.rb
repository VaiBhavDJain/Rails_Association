class CreateAccos < ActiveRecord::Migration[6.1]
  def change
    create_table :accos do |t|

      t.belongs_to :supp
      t.string :account_number
    end
  end
end
