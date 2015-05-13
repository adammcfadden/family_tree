class AddInitialTables < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.column :relation, :string
      t.integer :person_id
      t.integer :relative_id
    end
    create_table :people do |t|
      t.column :name, :string
    end
  #   create_table :relatives_relationships, id: false do |t|
  #     t.integer :relative_id
  #     t.integer :relationship_id
  #   end
  #   create_table :people_relationships, id: false do |t|
  #     t.integer :relationship_id
  #     t.integer :person_id
  #   end
  #   add_index :relatives_relationships, :relationship_id
  #   add_index :relatives_relationships, :relative_id
  #   add_index :people_relationships, :relationship_id
  #   add_index :people_relationships, :person_id
  # end
end
end
