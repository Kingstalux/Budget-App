class CreateUser < ApplicationRecord
    has_many :groups, class_name: "Group", foreign_key: "author_id"
    has_many :entities, class_name: "Entity", foreign_key: "author_id"
end
