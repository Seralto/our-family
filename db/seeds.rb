# frozen_string_literal: true

Person.create(
  [
    { first_name: 'João', last_name: 'da Silva Santos', gender: 'male', birthdate: '1977-09-13' },
    { first_name: 'Maria', last_name: 'da Silva Santos', gender: 'female', birthdate: '1978-11-06' },
    { first_name: 'Ana', last_name: 'da Silva Santos', gender: 'female', birthdate: '2013-06-17' },
    { first_name: 'Pedro', last_name: 'da Silva Santos', gender: 'male', birthdate: '2015-12-16' }
  ]
)

Kinship.create(
  [
    { name: 'Pai' },
    { name: 'Mãe' },
    { name: 'Irmão' },
    { name: 'Irmã' },
    { name: 'Conjuge' },
    { name: 'Filho' },
    { name: 'Filha' },
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
