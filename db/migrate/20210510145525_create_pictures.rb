class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, polymorphic: true
      
      # references solve this following complex structure :-
      
      # t.bigint  :imageable_id
      # t.string  :imageable_type
    end
    # add_index :pictures, [:imageable_type, :imageable_id]
  end
end
