class CreateAssemblyParts < ActiveRecord::Migration[6.1]
  def change
    create_table :assembly_parts do |t|

      t.belongs_to :assembly
      t.belongs_to :part
    end
  end
end
