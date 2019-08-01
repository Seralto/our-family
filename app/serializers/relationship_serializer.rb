class RelationshipSerializer < ActiveModel::Serializer
  attributes :name, :gender, :birthdate, :relationship

  def name
    object.relative_person.full_name
  end

  def gender
    object.relative_person.gender
  end

  def birthdate
    object.relative_person.birthdate
  end

  def relationship
    object.kinship.name
  end
end
