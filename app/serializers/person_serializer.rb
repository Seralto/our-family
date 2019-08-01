class PersonSerializer < ActiveModel::Serializer
  attributes :full_name, :gender, :birthdate

  has_many :relationships
end
