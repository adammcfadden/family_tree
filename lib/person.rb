class Person < ActiveRecord::Base


has_many :relatives, through: :people_relationships, source: :relative
has_many :people_relationships, foreign_key: :relative_id, class_name: "Relationship"

has_many :people, through: :relatives_relationships, source: :people
has_many :relatives_relationships, foreign_key: :person_id, class_name: "Relationship"
end
