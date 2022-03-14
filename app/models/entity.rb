class Entity < ApplicationRecord
  belongs_to :user
  has_many :relations
  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
