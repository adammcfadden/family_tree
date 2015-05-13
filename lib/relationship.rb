class Relationship < ActiveRecord::Base

  belongs_to :person, :foreign_key => "person_id", :class_name => "Person"
  belongs_to :relative, :foreign_key => "relative_id", :class_name => "Person"

  scope :ancestry, -> (id) { where("relative_id is ?", id)}
end
