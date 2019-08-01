# frozen_string_literal: true

joao = Person.create(first_name: 'João', last_name: 'da Silva Santos', gender: 'male', birthdate: '1977-09-13')
maria = Person.create(first_name: 'Maria', last_name: 'da Silva Santos', gender: 'female', birthdate: '1978-11-06')
rosa = Person.create(first_name: 'Rosa', last_name: 'da Silva Santos', gender: 'female', birthdate: '2013-06-17')
pedro = Person.create(first_name: 'Pedro', last_name: 'da Silva Santos', gender: 'male', birthdate: '2015-12-16')
jose = Person.create(first_name: 'José', last_name: 'da Silva Santos', gender: 'male', birthdate: '1950-01-01')
ana = Person.create(first_name: 'Ana', last_name: 'da Silva Santos', gender: 'male', birthdate: '2052-10-10')

spouse = Kinship.create(name: 'spouse')
son = Kinship.create(name: 'son')
daughter = Kinship.create(name: 'daughter')
father = Kinship.create(name: 'father')
mother = Kinship.create(name: 'mother')

Kinship.create(
  [
    { name: 'brother' },
    { name: 'sister' },
    { name: 'uncle' },
    { name: 'aunt' },
    { name: 'nephew' },
    { name: 'niece' },
    { name: 'grandfather' },
    { name: 'grandmother' },
    { name: 'grandson' },
    { name: 'granddaughter' }
  ]
)

Relationship.create(person: joao, relative_person: maria, kinship: spouse)
Relationship.create(person: joao, relative_person: rosa, kinship: daughter)
Relationship.create(person: joao, relative_person: pedro, kinship: son)
Relationship.create(person: joao, relative_person: jose, kinship: father)
Relationship.create(person: joao, relative_person: ana, kinship: mother)
