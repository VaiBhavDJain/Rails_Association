class CreateSupps < ActiveRecord::Migration[6.1]
  def change
    create_table :supps do |t|

      t.string :name
    end
  end
end
