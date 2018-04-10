class Project < ApplicationRecord
    has_and_belongs_to_many :users
    validates :name, presence: true, length: {minimum: 3, maximum: 50}
	validates :description, presence: true, length: {minimum: 10}
	validates_uniqueness_of :name
end
