class CreateAssemblies < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies do |t|

      t.string :name
    end
  end
end
