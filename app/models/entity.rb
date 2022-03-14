class Entity < ApplicationRecord
  belongs_to :user
  has_many :relations, dependent: :destroy
  validates :name, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
