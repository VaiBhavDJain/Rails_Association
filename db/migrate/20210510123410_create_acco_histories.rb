class CreateAccoHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :acco_histories do |t|

      t.belongs_to :acco
      t.integer :credit_rating
    end
  end
end
