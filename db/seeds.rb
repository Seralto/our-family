# frozen_string_literal: true

joao = Person.create(first_name: 'João', last_name: 'da Silva Santos', gender: 'male', birthdate: '1977-09-13')
maria = Person.create(first_name: 'Maria', last_name: 'da Silva Santos', gender: 'female', birthdate: '1978-11-06')
ana = Person.create(first_name: 'Ana', last_name: 'da Silva Santos', gender: 'female', birthdate: '2013-06-17')
pedro = Person.create(first_name: 'Pedro', last_name: 'da Silva Santos', gender: 'male', birthdate: '2015-12-16')

conjuge = Kinship.create(name: 'Conjuge')
filho = Kinship.create(name: 'Filho')
filha = Kinship.create(name: 'Filha')

Kinship.create(
  [
    { name: 'Pai' },
    { name: 'Mãe' },
    { name: 'Irmão' },
    { name: 'Irmã' },
    { name: 'Tio' },
    { name: 'Tia' },
    { name: 'Sobrinho' },
    { name: 'Sobrinha' },
    { name: 'Primo' },
    { name: 'Prima' },
    { name: 'Avô' },
    { name: 'Avó' },
    { name: 'Neto' },
    { name: 'Neta' },
    { name: 'Bisavô' },
    { name: 'Bisavó' },
    { name: 'Bisneto' },
    { name: 'Bisneta' }
  ]
)

Relationship.create(person: joao, relative_person: maria, kinship: conjuge)
Relationship.create(person: joao, relative_person: ana, kinship: filha)
Relationship.create(person: joao, relative_person: pedro, kinship: filho)
