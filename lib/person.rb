class Person < ActiveRecord::Base

  has_and_belongs_to_many :relatives, class_name: "Person",
                                       join_table: "relationships",
                                       association_foreign_key: "relative_id"
  end
