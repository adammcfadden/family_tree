class Person < ActiveRecord::Base


has_many :relationships, :foreign_key => "person_id",
  class_name: "Relationship"


has_many :relatives, :through => :relationships

end
