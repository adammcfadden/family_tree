require 'spec_helper'

describe Person do
  describe 'the ability to create and recall' do
    it 'add a person, relative, and relationship. recall relationship and relative' do
      person1 = Person.create name: 'tom'
      person2 = Person.create name: 'bob'
      relation = Relationship.create({relation: 'brother', person_id: person1.id, relative_id: person2.id})
      test1 = relation.person
      test2 = relation.relative
      relation_type = relation.relation
      expect(relation_type).to(eq('brother'))
      expect(test1.name).to(eq(person1.name))
      expect(test2.name).to(eq(person2.name))
    end
  end
end
