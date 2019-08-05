# frozen_string_literal: true

pessoa = Person.create(first_name: 'Pessoa', last_name: 'da Silva Santos', gender: 'male', birthdate: '1977-09-13')
esposa = Person.create(first_name: 'Esposa', last_name: 'da Silva Santos', gender: 'female', birthdate: '1978-11-06')
filha = Person.create(first_name: 'Filha', last_name: 'da Silva Santos', gender: 'female', birthdate: '2013-06-17')
filho = Person.create(first_name: 'Filho', last_name: 'da Silva Santos', gender: 'male', birthdate: '2015-12-16')
pai = Person.create(first_name: 'Pai', last_name: 'da Silva Santos', gender: 'male', birthdate: '1950-01-01')
mae = Person.create(first_name: 'Mãe', last_name: 'da Silva Santos', gender: 'male', birthdate: '2052-10-10')

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

Relationship.create(person: pessoa, relative_person: pai, kinship: father)
Relationship.create(person: pessoa, relative_person: mae, kinship: mother)
Relationship.create(person: pessoa, relative_person: esposa, kinship: spouse)
Relationship.create(person: pessoa, relative_person: filho, kinship: son)
Relationship.create(person: pessoa, relative_person: filha, kinship: daughter)
