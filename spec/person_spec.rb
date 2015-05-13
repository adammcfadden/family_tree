require 'spec_helper'

describe Person do
  describe 'the ability to create and recall' do
    it 'add a person, relative, and relationship. recall relationship and relative' do
      person1 = Person.create name: 'tom'
      person2 = Person.create name: 'bob'
      relation = Relationship.create({relation: 'brother', person_id: person1.id, relative_id: person2.id})
      # relation1 = Relationship.create({relation: 'brother', person_id: person2.id, relative_id: person1.id})

      tester = person1.relationships.first
      binding.pry
      tester_id = tester.relative_id
      tester_relation = tester.relation
      expect(tester_relation).to(eq('brother'))
      expect(tester_id).to(eq(person2.id))
    end
  end
end
