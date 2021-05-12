class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|

      t.references :manager, foreign_key: { to_table: :workers }
    end
  end
end
