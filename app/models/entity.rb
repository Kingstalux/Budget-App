class Entity < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "author_id"
  has_many :relations, class_name: "Relation", foreign_key: "entity_id"
  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
