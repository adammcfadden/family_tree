class AddInitialTables < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.column :name, :string
    end
    create_table :relationships do |t|
      t.column :type, :string
    end
    create_table :persons do |t|
      t.column :name, :string
    end
    create_table :persons_relationships_relatives, id: false do |t|
      t.integer :person_id
      t.integer :relationship_id
      t.integer :person_id
    end
    add_index :persons_relationships_relatives, :person_id
    add_index :persons_relationships_relatives, :relationship_id
    add_index :persons_relationships_relatives, :person_id      
  end
end
