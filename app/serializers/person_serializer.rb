class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :birthdate

  def name
    object.full_name
  end

  has_many :relationships, key: :relatives
end
