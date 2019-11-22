class Dog < ApplicationRecord
    validates :name, :age, :enjoys, presence: true
    has_one_attached :photo
end
