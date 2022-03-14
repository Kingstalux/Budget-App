class CreateEntity < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "author_id"
  has_many :relations, class_name: "Relation", foreign_key: "entity_id"
end
