require 'spec_helper'

describe Person do
  describe 'the ability to create and recall' do
    it 'add a person, relative, and relationship. recall relationship and relative' do
      person = Person.create name: 'tom'
      binding.pry
      relative = Person.create name: 'tony'
      relationship = Relationship.create relation: 'brother'

      relationship.update({relative_ids: relative.id, person_ids: person.id})
      person_relatives = person.relationship
      expect(person_relatives.name).to(eq('tony'))
      # expect(person_relationships.relation).to(eq('brother'))
    end
  end
end
