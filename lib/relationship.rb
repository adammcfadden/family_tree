class Relationship < ActiveRecord::Base


  belongs_to :relatives, foreign_key: "relative_id", class_name: "Person"
  belongs_to :people, foreign_key: "person_id", class_name: "Person"


end
